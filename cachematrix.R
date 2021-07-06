## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(g = matrix()) {
  yuh <- NULL
  set <- function(y){
    g <<- y
    yuh <<- NULL
  }
  get <- function()g
  setInverse <- function(inverse) yuh <<- inverse
  getInverse <- function() yuh 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
cacheSolve <- function(g, ...) {
  yuh <- g$getInverse()
  if(!is.null(yuh)){
    message("returning inversed matrix")
    return(yuh)
  }
  mat <- g$get()
  yuh <- solve(mat, ...)
  g$setInverse(yuh)
  yuh
}


