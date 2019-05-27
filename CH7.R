df <- data.frame(position = c("p", NA, "2b", "3b", NA, "r", "m", "l", "s"),
                 number = c(13, NA, 3, 1, 7, NA, 11, 36,NA))
df
is.na(df)
table(is.na(df))
mean(df$number)
library(dplyr)
df1 <- df %>% filter(!is.na(position) & !is.na(number))
df1
df2 <- na.omit(df)
df2
mean(df$number, na.rm = T)
df %>%summarise(mean_number = mean(number, na.rm = T))
df3 <- data.frame(review = c(5,1,-1,2,4,6,0,3,3),
                  genre = c("ACTION","ROMANCE","COMEDI","ACTION","BASEBALL","SF","SF","COMEDI","NOOB"))
df3
df3$review <- ifelse(df3$review >= 1 & df3$review <= 5, df3$review, NA)
df3$genre <- ifelse(df3$genre == "BASEBALL" | df3$genre == "NOOB", NA, df3$genre)
df3
library(ggplot2)
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))
mean(mpg$hwy, na.rm = T)
