## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL      
  set <- function(y) { ##sets the function with y as argument
    x <<- y
    i <<- NULL
  }
  get <- function() x ##gets the function x
  setinverse <- function(solve) i <<- solve ## sets i function 
  getinverse <- function() i  ## gets i function
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)  ## lists the functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 i <- x$getinverse() ## gets inverse of x and if present already gives below one
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get() ## if the inverse is not present gets the inverse of given matrix and prints the inverse
  i <- solve(data, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}

##for example
##a<- matrix(1:4,2,2)
##Cache <- makeCacheMatrix(a)
##cacheSolve(Cache)
