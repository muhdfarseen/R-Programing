
library(MASS)
library(reshape)

cat("Ships Dataset\n\n")
print(ships)
cat("\n\n")

cat("Melted Data \n\n")
molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)
cat("\n\n")


cat("Casted Data \n\n")
recasted.ship <- cast(molten.ships, type+year~variable,sum)
print(recasted.ship)
cat("\n\n")

