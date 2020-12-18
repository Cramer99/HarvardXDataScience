#load dslabs dataset heights
library(dslabs)
data("heights")
#report 3 significant digits for all answers
options(digits = 3)

class(heights)
heights

avg <- mean(heights$height)
avg
ind <- heights$height > avg
sum(heights$height > avg)
tall <- heights$height > avg
tall
female <- heights$sex == "Female"
sum(female)
index <- tall & female
sum(index)
mean(female)
female
rank(heights$height)
sort(heights$height)
order(heights$height)
min(heights$height)
i_min <- which.max(heights$height)
heights$height[i_min]
rank(height$height)

ind <- match(50, heights$height)
ind
heights$height[ind]
heights$sex[ind]
max(heights$height)
min(heights$height)

x <- (50:82)
#How many of the integers in x are NOT heights in the dataset?
#Use the sum() and %in% functions in addition to the ! operator.

ind <- !x%in%heights$height
sum(ind)
ind

#Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.
heights2 <- mutate(heights, ht_cm = heights$height * 2.54)
#What is the height in centimeters of the 18th individual (index 18)?
heights2$ht_cm[18]
#What is the mean height in centimeters?
mean(heights2$ht_cm)
# How many females are in the heights2 dataset?
female2 <-  heights2$sex == "Female"
sum(female2)
#What is the mean height of the females in centimeters?
women_only <- heights2 %>% filter(sex == "Female") %>% select(ht_cm)
mean(women_only$ht_cm)


#The olive dataset in dslabs contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
library(dslabs)
data("olive")
head(olive)

#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?
x <- olive$palmitic
y <- olive$palmitoleic
plot(x, y)

#Create a histogram of the percentage of eicosenoic acid in olive. Which of the following is true?
hist(olive$eicosenoic)  

#Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
boxplot(palmitoleic~region, data = olive)
