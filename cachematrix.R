## The functions defined below will create a vector of functions necessary to cache
## the inverse of a square invertible matrix so that whenever the inverse of a matrix 
## needs to be found, the inverse operation needn't be performed again and can simply
## be taken from the cache.

## The makeCacheMatrix function creates a list of functions to cache a matrix and
## its inverse.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    
    ## function to set the matrix
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    
    ## function to get the matrix
    get <- function() {
        x
    }
    
    ## function to set (cache) the inverse matrix
    setinverse <- function(inverse) {
        i <<- inverse
    }
    
    ## function to get the cached inverse matrix
    getinverse <- function() {
        i
    }
    
    ## creating a list with all the 4 functions
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The cacheSolve function finds the inverse of a matrix if it is not already cached.

cacheSolve <- function(x, ...) {
    
    ## get the cached inverse of 'x'
    i <- x$getinverse()
    
    ## if i is NULL, calculate inverse of 'x' and cache it
    if (is.null(i)) {
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
    }
    
    ## else if i is not NULL, give a message that you are returning the cached inverse
    else {
        message("getting cached data")    
    }
    
    ## i is returned and it is either cached inverse or calculated inverse depending 
    ## on whether the "if" or "else" loop was executed
    i
    
}
