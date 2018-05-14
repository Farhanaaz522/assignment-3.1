#assignment 3.1

#Question 1. How many vowels are there in the names of USA States?

#answer
library(stringr)
states=rownames(USArrests)
vowels = c("a", "e", "i", "o", "u")

num_vowels = vector(mode = "integer", length = 5)

# calculating number of vowels in each name

for (j in seq_along(vowels))
  {
  
  num_aux = str_count(tolower(states), vowels[j])
  num_vowels[j] = sum(num_aux)
}

names(num_vowels) = vowels
# total number of vowels
num_vowels

#Question 2
#visulalize the vowel distribution

sort(num_vowels, decreasing = TRUE)
barplot(num_vowels, main = "Number of vowels in USA States names",
        border = NA, ylim = c(0, 80))
