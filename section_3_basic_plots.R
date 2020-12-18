# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
hist(murders$rate)

# boxplots of murder rates by region
boxplot(rate~region, data = murders)

# Load the datasets and define some variables
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Load the datasets and define some variables
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Transform population using the log10 transformation and save to object log10_population
log10_population<- log10(murders$population)

# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(murders$total)

# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)

# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)

# Create a boxplot of state populations by region for the murders dataset
boxplot(population~region, data = murders)