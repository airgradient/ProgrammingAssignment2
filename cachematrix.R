## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        InvMat <- NULL
        set <- function(y){
                x <<- y
                InvMat <<- NULL
        }
        get <- function() x
        setInvMat <- function(pivy) InvMat <<- pivy
        getInvMat <- function() InvMat
        list(set = set, get = get. setmean = setmean, getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        InvMat <- x$getInvMat()
        if(!is.null(InvMat)){
                message("getting saved inverse matrix")
                return(InvMat)
        }
        oriMat <- x$get()
        InvMat <- solve(oriMat)
        x$setInvMat(InvMat)
        InvMat
        ## Return a matrix that is the inverse of 'x'
}
