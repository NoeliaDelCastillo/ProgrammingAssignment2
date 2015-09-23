## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function: 
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

> makeCacheMatrix<- function(x = matrix()) {
+     m <- NULL
+     set <- function(y) {
+         x <<- y
+         m <<- NULL
+     }
+     get <- function() x
+     setmatrix <- function(solve) m <<- solve
+     getmatrix <- function() m
+     list(set = set, get = get,
+          setmatrix = setmatrix,
+          getmatrix = getmatrix)
+     
+ }


## Write a short comment describing this function: 

# The following function returns the inverse of the matrix. It checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

> cacheSolve <- function(x=matrix(), ...) {
+     m<-x$get()
+     if(!is.null(m)){
+         message("getting cached data")
+         return(m)
+     }
+     matrix<-x$get()
+     m<-solve(matrix, ...)
+     x$setmatrix(m)
+     m
+ }

