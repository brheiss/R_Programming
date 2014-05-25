
makeCacheMatrix <- function(x = matrix()) {
     ## This function creates a special matrix object
     ## that can cache its inverse.

     ## Initialize m as null
     m <- NULL
     
     ## Set the value of the vector
     set <- function(y) {
           x <<- y
           m <<- NULL
     }
     
     ## Get the value of the vector
     get <- function() x
     
     ## Set the values of the matrix
     setmatrix <- function(solve) m <<- solve
     
     ## Get the values of the matrix
     getmatrix <- function() m
     
     ## Create the list
     list(set=set, get=get,
          setmatrix = setmatrix,
          getmatrix = getmatrix)
}

