## Put comments here that give an overall description of what your
## functions do
# makeCacheMatrix returns a list of functions. The point of this is to take
# a matrix and store it as well as a cached value of the inverse of said matrix.
# the makeCacheMatrix functions follow:
# getMatrix: sets the value of a matrix
# getMatrix: gets the value of a matrix
# cacheInverse: set the cached value of the inversed matrix
# getInverse: get the cached value of of the inversed matrix
#
# cacheSolve calculates the inverse of the matrix created with makeCacheMatrix


# Store a matrix and cached value of matrix inverse.

makeCacheMatrix <- function(x = matrix()) {
#cache will store the cached value. Currently null as there is no value.    
  cache <- NULL
#setMatrix stores the matrix
  setMatrix <- function(value) {
    x <<- value
    cache <<- NULL
  }
#getMatrix returns stored matrix
  getMatrix <- function() {
    x
  }
#cacheInverse will cache a given argument
  cacheInverse <- function(solve) {
    cache <<- solve
  }
#getInverse returns cached value
  getInverse <- function() {
    cache
  }
#now return a list where each named element is a function.
list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function
#cacheSolve calculates the inverse of the matrix created with makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- y$getInverse()
#if a cached value is present, return it.
  if(!is.null(inverse)) {
    print("Cached value exists")
    return(inverse)
  }
#If cached value does not exist, pull the matrix, calculate inverse, and
#store value in cache.
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
#return value of inverse of matrix
  inverse
}
