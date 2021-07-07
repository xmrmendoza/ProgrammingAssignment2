## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#The function that is included is called makeCacheMatrix which includes setinv and getinv
makeCacheMatrix <- function(g = matrix()) {
  yuh <- NULL           #it sets up yuh as NULL
  set <- function(jop) {
    g <<- y
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
#The function includes cacheSolve which is used to obtain cache data
cacheSolve <- function(g, ...) {
  yuh <- g$getinv()
  if(!is.null(yuh)){  #it assesses if it is null
    message("getting inversed cached data")
    return(yuh)  #it returns the inverse value
  }
  u <- g$get()
  yuh <- solve(u, ...)
  g$setinv(yuh)
  yuh
}
