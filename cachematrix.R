## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(g = matrix()) {
  u <- NULL
  set <- function(y){
    g <<- y
    u <<- NULL
  }
  get <- function()g
  setInverse <- function(inverse) u <<- inverse
  getInverse <- function() u 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
cacheSolve <- function(g, ...) {
  u <- g$getInverse()
  if(!is.null(u)){
    message("returning inversed matrix")
    return(u)
  }
  mat <- g$get()
  u <- solve(mat, ...)
  g$setInverse(u)
  u
}


