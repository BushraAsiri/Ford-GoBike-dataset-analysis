# Define the data

x<-c(2, 6, 7, 9, 12)
Y<- c(90, 45, 30, 5, 2)

# Create the scatter plot with grid lines
plot(X, Y, 
     main = "Scatter Plot of X and Y with Least Squares Line",
     xlab = 'mean call-to-shock time(minutes)',
     ylab = "survival rate",
     pch = 19,          
     col = "blue")      
grid(nx = NULL, ny = NULL, col = "gray", lty = "dotted")  # Gray dotted grid lines

# Calculate the Least Squares model
model <- lm(Y ~ X)

# Extract coefficients (intercept and slope)
coefficients <- coef(model)
intercept <- coefficients[1]  # Intercept (a)
slope <- coefficients[2]      # Slope (b)

# Print the coefficients
cat("Intercept (a):", intercept, "\n")
cat("Slope (b):", slope, "\n")

# Add the Least Squares line to the scatter plot
abline(model, col = "red", lwd = 2) 