This is the first simple attempt to wrap the t-sne - algorithm for VisRseq.
I could not get all the dependencies to run for "visrutils.R" on MAC OSX 10.10.5, so the json needed to be coded by hand.
Since some packages were not available (for R version 3.3.3) -> newest possible version for MAC OSX 10.10.5.

The whole thing is unfinished. At the moment it only performs t-sne on the columns chosen and shows the IDs of the points.

The finished idea is shown in tsne_example.R.

I wanted to include the possibility to bin (for example TPR or FPR) by color, like the classes in the IRIS set, to see if can produce clusters of high TPR after dimensionality reduction and see which dimensions produce this effect.