## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

myCachematrix<- function(x=matrix()){
      tis<- NULL
      set<-function(y){
            x<<- y
            tis<<- NULL
      }
      get<- function(){x}
      setInverse <- function(inverse){tis <<- inverse}
      getInverse <- function() {tis}
      list(set=set, get=get, setInverse= setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve<- function(x, ...){
      tis<- x$getInverse()
      if(!is.null(tis)){
            message("getting cached data")
            return(tis)
      }
      mat<- x$get()
      tis<- solve(mat,...)
      x$setInverse(tis)
      tis
}