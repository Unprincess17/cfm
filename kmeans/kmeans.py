import numpy as np
from sklearn.cluster import KMeans, MiniBatchKMeans
from sklearn.datasets._samples_generator import make_blobs

np.random.seed(42)

samples, labels = make_blobs(n_samples=15000000, centers=10, random_state=0)
k_means = KMeans(10, n_init=10)
#k_means = MiniBatchKMeans(10, n_init=10)
k_means.fit(samples)
