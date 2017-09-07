#COULD NOT GET DEPENDENCIES TO RUN ON MAC OSX 10.10.5
#CODED JSON PER HAND
#
#source("visrutils.R")
#
##
#visr.app.start("t-sne", debugdata ="NONE")
#visr.param("k", type = "int", default = 2)
#visr.param("initial_dims" = "int", default = 30)
#visr.param("perplexity" = "int", default = 30)
#visr.param("max_iter" = "int", default = 1000)
#visr.param("min_cost" = "int", default = 0)
#visr.param("epoch" = "int", default = 100)
#visr.app.end(printjson=TRUE,writefile=T)


visr.applyParameters()

##
library("tsne")
#X <- visr.input
X <-subset(visr.input, select = visr.param.columns)
#p <-subset(visr.input, select = "ID")
#X = matrix(rexp(200, rate=.1), ncol=20)
#ecb = function(x,y){ plot(x,t='n'); text(x) }

output = tsne(X, initial_config = NULL, k = 2, initial_dims = 30, perplexity = 30, max_iter = 30, min_cost = 0, epoch_callback = NULL, whiten = TRUE, epoch=100)

#output = tsne(X, initial_config = NULL, k = visr.param.k, initial_dims = visr.param.initial_dims, perplexity = visr.param.perplexity, max_iter = visr.param.max_iter, min_cost = visr.param.min_cost, epoch_callback = NULL, whiten = TRUE, epoch=visr.param.epoch)

plot(output)
#text(output,output, labels = seq(0,49))
text(output,labels = t(seq(0,49)))
#text(output,labels = p)


