## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creating a special matrix 
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(z){
    x<<-z
    s<<-NULL
  }
  get <- function(){x}
  setInverse <- function(inverse){s<<- inverse}
  getInverse <- function(){s}
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}


## Write a short comment describing this function

## Solving issue from original special matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getInverse()
  if(!is.null(s)){
    message("Get Cached Data")
    return(s)
  }
  mat<-x$get()
  s<- solve(mat,...)
  x$setInverse(s)
  s
}

