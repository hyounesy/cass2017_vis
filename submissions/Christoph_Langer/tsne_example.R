colors = rainbow(length(unique(iris$Species)))
names(colors) = unique(iris$Species)
#ecb = function(x,y){ plot(x,t='n'); text(x, col=colors[iris$Species]) }
tsne_iris = tsne(iris[,1:4], epoch_callback = NULL, perplexity=50)
plot(tsne_iris,col=colors[iris$Species])
text(tsne_iris,label=t(seq(1,150)))

