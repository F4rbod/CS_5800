merge=function(x,y){
  if (length(x) == 0){
    return(y)
  }
  if (length(y) == 0) {
    return(x)
  }
  else if (x[1] <= y[1]){
    return(c(x[1],merge(x[-1],y)))
  }
  else {
    return(c(y[1],merge(x,y[-1])))
  }
}

merge_sort=function(data){
  if (length(data)>1){
    return(x=merge(merge_sort(data[1:ceiling(length(data)/2)]),
          y=merge_sort(data[(ceiling(length(data)/2)+1):length(data)])))
  }
  else return(data)
}

a = c(2, 36, 5, 21, 8, 13,11, 20, 5, 4, 1)

merge_sort(a)
