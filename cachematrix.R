## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function(nrow, ncol) {
  
  m <- NULL
  
  set <- function(matrix) {
    m <<- matrix
    cache$set("matrix", m)
  }
  
  get <- function() {
    cache$get("matrix")
  }
  
  cache <- list(set = set, get = get)
  matrix(nrow = nrow, ncol = ncol)
}

cacheSolve <- function(cacheMatrix) {
  
  m <- cacheMatrix$get()
  
  if (!is.null(m)) {
    message("Getting cached data")
    return(m)
  }
  
  inv <- solve(cacheMatrix)
  cacheMatrix$set(inv)
  
  inv
}
