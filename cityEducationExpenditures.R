
## We set variables using "<-"
tab <- read.csv("city_graduation_and_expenditures.csv")

## Plots from the "tab" table the $Expenditures details against the 
## $Graduatio detais

plot( tab$Expenditures, tab$Graduation)


