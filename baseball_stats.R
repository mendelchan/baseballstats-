# Correlation Analysis on MLB Data 
# MLB Teams from the AL East & NL East Divisons (Source: ESPN) 
Team <- c("Baltimore Orioles", "Boston RedSox", "New York Yankees", 
          "Tampa Bay Rays", "Toronto Blue Jays", "Atlanta Braves", "Miami Marlins", 
          "New York Mets", "Philadelphia Phillies", "Washington Nationals") 

# Total Home Runs and Batting Average for the 10 teams 
Total_HomeRuns <- c(222, 164, 192, 236, 174, 216, 163, 172, 234, 178) 
Batting_Average <- c(0.270, 0.253, 0.269, 0.280, 0.255, 0.267, 0.259, 0.272, 0.278, 0.257) 

# Create the dataframe baseball_data to analyze the data 
baseball_data <- data.frame(Team, Total_HomeRuns, Batting_Average) 

# For linear regression analysis, the function called lm (linear model) is used  
model <- lm(formula = Batting_Average ~ Total_HomeRuns, data=baseball_data) 

# Find the coefficients of the linear regression line
coef(lm(model))

# Summary statistics of the model 
summary(model) 

# Load the ggplot2 package to create a scatterplot visualization 
library(ggplot2) 

# Create a scatterplot to visualize the data 
ggplot(model, aes(x=Total_HomeRuns, y=Batting_Average)) +
geom_point() + geom_abline(intercept=0.21393, slope=0.0002669)
# Based on the scatterplot, it appears that there is a positive relationship
# between total home runs and team batting average 

# Pearson correlation analysis 
cor(baseball_data$Total_HomeRuns, baseball_data$Batting_Average, method="pearson")
# At a 5% level of significance, there is a positive correlation between
# total home runs and team batting average (t = 3.947  at the 5% level of significance) 
# and r = 0.8128 







