#source("visutils.R")

### create laplacian
createLaplacian <- function( layerN ){
  
  ## prepend input N / append output N
  layerN = cbind(H0 = 2,layerN, Hn = 1)
  layerN = layerN[ layerN != 0 ] ## remove all zero layers
  
  ## init Laplace matirx
  nn = sum( layerN )
  L = matrix( 0, nn, nn )
  
  colIdx = layerN[1]+1
  rowIdx = 1
  
  for(i in 1:(length(layerN)-1)){
    nI = layerN[i]
    nJ = layerN[i+1]
    subL = matrix(1,nI,nJ) * ( -1 / sqrt( nI * nJ ) ) ## create Laplace rank entries
    L[ rowIdx:(rowIdx+nI-1),colIdx:(colIdx+nJ-1)] <- subL
    colIdx = colIdx + nJ
    rowIdx = rowIdx + nI
  }
  
  L = L + t( L ) ## fill lower triangle (symmetric)
  diag( L ) <- 1 ## set diagonal to 1	
  
  return( L )
}

sumEigenvals <- function( L ){
  
  ev <- eigen( L )
  return( sum(abs(ev$values)) )
  
}

## compute energy of graph
computeEnergy <- function( network ){
  
  L = createLaplacian( network )
  return( sumEigenvals( L ) )
  
}

visr.applyParameters()

layers <- subset(visr.input, select = param.layers)
result <- subset(visr.input, select = param.error)

energy <- apply( layers, 1, computeEnergy )

plot(energy, result, main = paste("Energy vs ",names(result)))