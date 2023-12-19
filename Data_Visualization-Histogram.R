
content = read.csv("distancetime.csv")

var_plot = hist(content$distance,
                   main = "Distance vs Time",
                   ylab = "Times",
                   xlab = "Distance",
                   col="red"
)
print(var_plot)