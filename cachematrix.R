## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#The function that is included is called makeCacheMatrix which includes setinv and getinv
makeCacheMatrix <- function(g = matrix()) {
  yuh <- NULL           #it sets up yuh as NULL
  set <- function(jop) {
    g <<- jop
    yuh <<- NULL
  }
  get <- function() g  #it is used to obtain matrix g
  setinv <- function(inv) yuh <<- inv
  getinv <- function() yuh 
  list(set = set, 
       get = get, 
       setinv = setIinv, 
       getinv = getinv)
}
#The function that is included is cacheSolve which is used to obtain cache data
cacheSolve <- function(g, ...) {
  yuh <- g$getinv()
  if(!is.null(yuh)){  #it assesses if it is null
    message("returning inversed matrix")
    return(yuh)  #it returns the inverse value
  }
  m <- g$get()
  yuh <- solve(m, ...)
  g$setinv(yuh)
  yuh
}
