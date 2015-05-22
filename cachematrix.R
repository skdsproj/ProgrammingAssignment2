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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
