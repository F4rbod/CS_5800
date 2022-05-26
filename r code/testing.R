b = c(1, 2, 2, 3, 4, 5, 3, 4, 6, 7, 3, 1, 3, 4, 5, 5, 5, 4, 3, 2, 65, 7, 9)

mmerge <- function(a, b) {
  r <- numeric(length(a) + length(b))
  ai <- 1; bi <- 1; j <- 1;
  for (j in 1:length(r)) {
    if ((ai <= length(a) && a[ai] < b[bi]) || bi > length(b)) {
      r[j] <- a[ai]
      ai <- ai + 1
    } else {
      r[j] <- b[bi]
      bi <- bi + 1
    }
  }
  r
}

mmergesort <- function(A) {
  if (length(A) > 1) {
    q <- ceiling(length(A) / 2)
    a <- mmergesort(A[1:q])
    b <- mmergesort(A[(q + 1):length(A)])
    mmerge(a, b)
  } else {
    A
  }
}

b = mmergesort(b)
b

i = 1
while (i < (length(b) - 1)) {
  if (b[i] == b[(i + 1)]) {
    b = (b[-(i + 1)])
  }
  else {
    i = i + 1
  }
}
b


a = (2, 36, 5, 21, 8, 13,11, 20, 5, 4, 1)

nth_largest=function(data, n){
  for (i in 1:length(data)){
}