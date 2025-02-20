#!/usr/bin/python3
import argparse
from lib import workloads
from lib import utils

def print_output(workload, args):
    print(workload.stdout.decode('utf-8'), '\n')
    print(workload.stderr.decode('utf-8'), '\n')
    process_duration = workload.get_process_duration()
    print('Python Wall Time: {}'.format(process_duration), '\n')

    usr_bin_time = workload.get_usr_bin_time()
    usr_bin_time = sorted(usr_bin_time.items(), key=lambda x:x[0])
    header, values = zip(*usr_bin_time)
    header = ','.join(header)
    values = map(str, values)
    values = ','.join(values)
    print(header, values, sep='\n')

def run_benchmark(args):
    workload_class = workloads.get_workload_class(args.name)
    
    # Use user-specified cpus, otherwise use first n cpus
    if args.cpus:
        pinned_cpus = args.cpus
    else:
        pinned_cpus = range(workload_class.cpu_req)

    if(args.name == "faasnap"):
        workload = workload_class(args.id, pinned_cpus, args.ratio, args.fbench)
    else:
        workload = workload_class(args.id, pinned_cpus, args.ratio)

    try:
        workload.start()
        workload.thread.join()  # Block until thread is finished
        print_output(workload, args)
    except KeyboardInterrupt:
        workload.kill()


def main():
    # Parse Command Line Arguments
    workload_choices = ['quicksort', 'linpack', 'tf-inception',
                        'tf-resnet', 'spark', 'kmeans', 'memaslap',
                        'stream', "faasnap"]

    parser = argparse.ArgumentParser(description='Run a workload in a '
                                     'parameterized container')
    parser.add_argument('name', help="Name of the binary to run",
                        choices=workload_choices)
    parser.add_argument('ratio',
                        help="Ratio of the workload's max memory to use",
                        type=utils.check_ratio)
    parser.add_argument('--id', default=0,
                        help="Workload id used for container name")
    parser.add_argument('--cpus', default=[],type=lambda l:list(map(int, l.split(','))),
                        help="List of cpus to use for workloads that support it")
    parser.add_argument('--fbench',default="hello", help="benchmark name for running faasnap_bench")

    args = parser.parse_args()
    print(args)
    run_benchmark(args)


if __name__ == '__main__':
    main()
