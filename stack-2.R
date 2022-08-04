nAlpha <- data.frame(
 letter = c("P1","P10","P11","P13"),
 number = as.numeric(c(0.123,0.456,0.389,0.458))
)

Alpha_o <- with(nAlpha, order(number))
# print(Alpha_o)

nAlpha[order(Alpha_o), ]