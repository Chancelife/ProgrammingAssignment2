## Put comments here that give an overall description of what your
## functions do:
## get & set a matrix and its inverse

## Write a short comment describing this function
## define the operations first, than complete the function code
makeCacheMatrix <- function(x = matrix()) {
  x <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data successful")
  } else {
    matrix <- x$get()
    inv <- solve(matrix, ...)
    x$setinverse(inv)
  }
  inv
}
