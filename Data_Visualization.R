
#------------------BARPLOT-Distance vs City--------------------------

content = read.csv("citydistance.csv")

var_plot = barplot(content$distance,
                   ylim = c(0,50),
                   main = "Distance vs City",
                   names.arg = content$city,
                   las = 0,
                   cex.names = 0.5,
                   xlab = "Cities",
                   ylab = "Distance",
                   col="blue"
                   )
print(var_plot)

#------------------HISTOGRAM-Distance vs Time------------------------

content = read.csv("distancetime.csv")

var_plot = hist(content$distance,
                main = "Distance vs Time",
                ylab = "Time",
                xlab = "Distance",
                col="red"
)
print(var_plot)

#------------------SCATTERPLOT-Distance vs Time----------------------

var_plot = plot(x = content$distance,
                y = content$time,
                main = "Distance vs Time",
                ylab = "Time",
                xlab = "Distance",
                pch = 8,
                cex = 1,
                col="darkgreen"
)
print(var_plot)

#------------------BOXPLOT-Distance vs Time--------------------------

var_plot = boxplot(x = content$distance,
                y = content$time,
                main = "Distance vs Time",
                ylab = "Time",
                xlab = "Distance",
                pch = 8,
                cex = 1,
                col="green"
)
print(var_plot)

















