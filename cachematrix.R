## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(g = matrix()) {
  yuh <- NULL
  set <- function(jop) {
    g <<- jop
    yuh <<- NULL
  }
  get <- function() g
  setinv <- function(inv) yuh <<- inv
  getinv <- function() yuh 
  list(set = set, 
       get = get, 
       setinv = setIinv, 
       getinv = getinv)
}
cacheSolve <- function(g, ...) {
  yuh <- g$getinv()
  if(!is.null(yuh)){
    message("returning inversed matrix")
    return(yuh)
  }
  m <- g$get()
  yuh <- solve(m, ...)
  g$setinv(yuh)
  yuh
}
