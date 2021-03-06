## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        a<- NULL                             
    set <- function(y) {                     
      x <<- y                           
      a<<- NULL                       
    }
    get <- function() x                     
    
    setinverse <- function(inverse) a<<- inverse  
    getinverse <- function() a                   
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
        a<- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    a<- solve(data, ...)
    x$setinverse(inv)
    inv
}
