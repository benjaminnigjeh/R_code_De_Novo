rm(list=ls())
letters <- read.csv("D:/DeNovo/letters.csv")
numbers <- read.csv("D:/DeNovo/numbers.csv")

letters <- as.data.frame(letters)
numbers <- as.data.frame(numbers)
numbers[is.na(numbers)] <- 0
numbers <- numbers[, 1:50]

a <- dim(numbers)
row_number <- as.numeric(a[1])
column_number <- as.numeric(a[2])
 
for (i in 1:row_number) {
  for (j in 1:column_number) {
      if (numbers[i ,j] < 80 && 0 < numbers[i, j]) {
      numbers[i, j] <- c("X")
    } else {
      numbers[i, j] <- as.character(letters[i, j])
    }
    }
}


write.csv(numbers, "D:/result.csv")



