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
    message("getting cached data")
    return(u)
  }
  mat <- x$get()
  u <- solve(mat, ...)
  x$setInverse(u)
  u
}
u <- NULL
set <- function(y) {
  x <<- y
  u <<- NULL
}
get <- function() x
setinv <- function(inverse) u <<- inverse
getinv <- function() u
list(set = set, get = get, setinv = setinv, getinv = getinv)

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  u <- x$getinv()
  if(!is.null(u)) {
    message("getting cached result")
    return(u)
  }
  mat <- x$get()
  u <- solve(data, ...)
  x$setinv(u)
  u
}

