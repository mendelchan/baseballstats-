# MLB Teams from the AL East and NL East Divisons 
Team <- c("Baltimore Orioles", "Boston RedSox", "New York Yankees", 
          "Tampa Bay Rays", "Toronto Blue Jays", "Atlanta Braves", "Miami Marlins", "New York Mets",
          "Philadelphia Phillies", "Washington Nationals") 

Total_HomeRuns <- c(222, 164, 192, 236, 174, 216, 163, 172, 234, 178) 

Batting_Average <- c(0.270, 0.253, 0.269, 0.280, 0.255, 0.267, 0.259, 0.272, 0.278, 0.257) 


# Create the dataframe output with the data given 
baseball_data <- data.frame(Team, Total_HomeRuns, Batting_Average) 

# For linear regression analysis, the function lm (linear model) is used  
model <- lm(formula = Batting_Average ~ Total_HomeRuns, data=baseball_data) 

# Find the equation of the linear regression line
coef(lm(model))

# Full summary statistics of the model 
summary(model) 
# y = 0.2139 + 0.0002669x 

# INSIGHTS: 
# Based on the scatterplot, it appears that there is a positive relationship
# between total home runs and team batting average 

# At a 5% level of significance, there is a positive correlation between
# total home runs and team batting average (t=   at the 5% level of significance) 
# r = 0.658 
cor(baseball_data$Total_HomeRuns, baseball_data$Batting_Average, method="pearson")






