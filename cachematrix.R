makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize inverse as NULL
  
  # Set the value of the matrix
  set <- function(y) {
    x <<- y  
    inv <<- NULL 
  }
  
  # Get the value of the matrix
  get <- function() x
  
  # Set the value of the inverse matrix
  setInverse <- function(inverse) inv <<- inverse
  
  # Get the value of the inverse matrix
  getInverse <- function() inv
  
  # Return a list of functions to interact with the matrix object
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
