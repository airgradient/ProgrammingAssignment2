## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function would retrieve the value of a matrix. If there is an inverse matrix, they can just store it inside the makeCacheMatrix   

makeCacheMatrix <- function(x = matrix()) {
  InvMat <- NULL
  set <- function(y){
    x <<- y
    InvMat <<- NULL
  }
  get <- function() x
  setInvMat <- function(pivy) InvMat <<- pivy
  getInvMat <- function() InvMat
  list(set = set, get = get, setInvMat = setInvMat, getInvMat = getInvMat)
}

## This function could calculate the inverse matrix of a non-stored one, and return the value of a stored one.
cacheSolve <- function(x, ...) {
  InvMat <- getInvMat(x)
  if(!is.null(InvMat)){
    message("getting saved inverse matrix")
    return(InvMat)
  }
  oriMat <- get(x)
  InvMat <- solve(oriMat)
  x$setInvMat(InvMat)
  InvMat
}
