data <- data.frame(
    sample.label = c(1, 1, 1, 2, 3, 3, 4, 4, 4, 4),
    hclass = c(1, 2, 7, 6, 5, 7, 1, 4, 7, 10),
    cover = c(0.2, 0.6, 0.2, 1, 0.7, 0.3, 0.2, 0.4, 0.1, 0.3)
)

# reshaping the data
data_reshape <- reshape(
    data, idvar = "sample.label", timevar = "hclass", 
    direction = "wide")

# fill na
data_reshape[is.na(data_reshape)] <- 0.0

# rename column
names(data_reshape) <- gsub(
    "cover.", "class", names(data_reshape))
rownames(data_reshape) <- NULL # re-arrange index

print(data_reshape)

## other solution

# library(tidyr)

# data %>%
#   complete(sample.label, hclass = 1:10, fill = list(cover = 0)) %>%
#   pivot_wider(names_from = hclass, names_prefix = "class", values_from = cover)

# # # A tibble: 4 × 11
# #   sample.label class1 class2 class3 class4 class5 class6 class7 class8 class9 class10
# #          <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>   <dbl>
# # 1            1    0.2    0.6      0    0      0        0    0.2      0      0     0  
# # 2            2    0      0        0    0      0        1    0        0      0     0  
# # 3            3    0      0        0    0      0.7      0    0.3      0      0     0  
# # 4            4    0.2    0        0    0.4    0        0    0.1      0      0     0.3