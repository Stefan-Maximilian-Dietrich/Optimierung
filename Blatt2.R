library(ggplot2)

seq <- seq(from = -1, to = 2, by = 0.01)

f1 <- function(x){
  exp(x^3 - 2 * x^2)
}

f1dx <- function(x) {
  (3 * x^2 - 4 * x) * exp(x^3 - 2 * x^2)
} 

df1 <- as.data.frame(cbind(x = seq, y1 = f1(seq), y2 = f1dx(seq)) )

ggplot(data = df3, aes(x = x, y = y, group = order)) +
  geom_line()