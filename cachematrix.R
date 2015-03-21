## Put comments here that give an overall description of what your
## functions do
## There are 2 functions. The first function makes a caches a matrix,
## whereas the second produces the needed result

## Write a short comment describing this function
## makeCacheMatrix makes a cached version of inputted matrix

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<-y
    s <<-NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function
## cacheSolve extracts and gets the inverse of the matrix
## cached in the previous function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if (!is.null(s)) {
    message("getting cached data...")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
