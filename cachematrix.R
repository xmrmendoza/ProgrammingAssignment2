## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  u <- NULL
  set <- function(y){
    x <<- y
    u <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) u <<- inverse
  getInverse <- function() u 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  u <- x$getInverse()
  if(!is.null(u)){
    message("returning inversed matrix")
    return(u)
  }
  mat <- x$get()
  u <- solve(mat, ...)
  x$setInverse(u)
  u

}




