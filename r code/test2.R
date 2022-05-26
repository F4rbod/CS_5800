nth_largest=function(data){
  v=5
  n=length(data)
  for (i in 1:length(data)){
    if (data[i] == v) {
      data=data[-i]
      data=append(data,v)
    }
  }

  for (i in 1:length(data)){
    if (data[i] > v) {
      data=append(data,data[i])

    }
  }
  for (i in 1:n){
    if (data[i] > v) {
      data=data[-i]
    }
  }
  return(data)
}


a = c(2, 36, 5, 21, 8, 13,11, 20, 5, 4, 1 ,5 ,5 ,5,5,5,5,5,5,5)

#b=nth_largest(a)

#b


# a=sort(a)
# a
#
# length(a)
# majority=length(a)/2
# count=1
# majority
#
# for(i in 2:(length(a))){
#
#   if (a[i-1]==a[i]){
#     count=count+1
#     if (count>majority){
#       print(a[i])
#       break
#     }
#   }
#
#   else {
#     count=1
#   }
# }
#
# count