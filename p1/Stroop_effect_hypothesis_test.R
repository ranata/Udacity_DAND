# Read data from csv

stroop_data = read.table("./udacity/DAND/p1/stroopdata.csv", header=TRUE, sep = ",")

# create a boxplot to compare the dataset for congruent and incongruent
boxplot(stroop_data, col=(c("blue","red")), main="Stroop Effect - Time taken to name the ink", 
        xlab="Condition", ylab="Time in seconds")

# Attach the df so columns can be referenced in absolute terms
attach(stroop_data)

# Draw a comparative probabality density function for the two data set to analyze the shape

plot(density(Congruent), main="Stroop Effect - Density Function for Congruent and Incongruent conditions")
lines(density(Incongruent))

# Perform a 2-sided paired t-test to validate null hypothesis @ alpha=0.05

t.test(Congruent, Incongruent, mu= 0, alt="two.sided", paired=TRUE, conf.level = 0.95)
