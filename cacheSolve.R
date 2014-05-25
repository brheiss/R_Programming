
cacheSolve <- function(x=matrix(), ...) {
      ## This function computes the inverse of the
      ## special "matrix" returned by makeCacheMatrix.
      ## If the inverse has already been calculated and
      ## the matrix has not changed, then the cacheSolve
      ## should retrieve the inverse from the cache.
      
      ## Get the matrix and assign to m
      m <- x$getmatrix()
      
      ## Check for data
      ## If data exists, return the matrix
      if(!is.null(m)) {
            message("Getting cached data")
            return(m)
      }
      
      ## Get the mean from the cache
      matrix <- x$get()
      
      ## Compute the inverse of the matrix
      m <- solve(matrix, ...)
      
      ## Set the inverse matrix
      x$setmatrix(m)
      
      ## Return m as the inverse matrix
      m
}
