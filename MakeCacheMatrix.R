makeCacheMatrix <- function(a = matrix()){
  inv <- NULL
  set <- function(y){
    x <<-y
    inv <<- NULL
    
    
  }
  
  
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



cacheSolve <- function(x, ...){
  inv <- a$getInverse()
  if(!is.null(inv)){
    message(" Getting Cached Data")
    return(inv)
    
    
  }
  
  
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
  
}


