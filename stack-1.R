## from stackoverflow 
## https://stackoverflow.com/questions/73056972/issue-with-ggplot2-geom-line-not-plotting-all-levels

# Frequency    Spectral     Time
# 0.000000000  0.0222398397 Pre
# 0.004882812  0.0852786647 Pre
# 0.009765625  0.1601532116 Pre
# 0.000000000  0.023070938  Post1
# 0.004882812  0.065029561  Post1
# 0.009765625  0.170168218  Post1
# 0.000000000  0.002796956  Post2
# 0.004882812  0.0650295614 Post2
# 0.009765625  0.1601532116 Post2
# 0.000000000  0.002796956  Post3
# 0.004882812  0.0650295614 Post3
# 0.009765625  0.1601532116 Post3

## loading library
library(dplyr)
library(ggplot2)

## create data frame
Frequency <- c(0.000000000,0.004882812,0.009765625,0.000000000,0.004882812,0.009765625,0.000000000,0.004882812,0.009765625,0.000000000,0.004882812,0.011)
Spectral <- c(0.0222398397,0.0852786647,0.1601532116,0.023070938,0.065029561,0.170168218,0.002796956,0.0650295614,0.1601532116,0.002796956,0.0650295614,0.1601532116)
Time <- c("Pre","Pre","Pre","Post1","Post1","Post1","Post2","Post2","Post2","Post3","Post3","Post3")

fullpsd <- data.frame(Frequency,Spectral,Time)
# print(df)

fullpsd %>% ggplot(aes(x = Frequency, y = Spectral)) + 
            geom_line(size = 2, aes(color = Time))

