install.packages("xlsx", dep = T)
library("xlsx")


data_table = read.xlsx(
              "C:/Users/Пользователь/Downloads/MacroForStudentData.xlsx",
              sheetIndex = 1
              )
data_table


# plotting histograms for parameters
hist(data_table$C, col = "lightblue", xlab = " Twelve-Month Average U.S.
                                    Domestic Price of Copper, Cents Per Pound")
hist(data_table$L, col = "lightblue", xlab = "Twelve-Month Average London 
                                    Metal Exchange Price of Copper," )
hist(data_table$I, col = "lightblue", xlab = "Twelve-Month Average Index 
                                    of Industrial Production," )
hist(data_table$G, col = "lightblue", xlab = "Annual Gross National Product, 
                                    Billions of $," )
hist(data_table$H, col = "green", xlab = "Number of Housing Starts 
                                    per Year, Thousands  of Units," )
hist(data_table$A, col = "red", xlab = "Twelve-Month Average Price 
                            of Aluminum, Cents Per Pound," )


# determining the significance of parameters
fit_0 = lm(data_table$C~data_table$I+data_table$L+data_table$H+data_table$A)
summary(fit_0)
plot(fit_0)


fit_1 = lm(data_table$I~data_table$A)
summary(fit_1)
plot(fit_1)


fit_2 = lm(data_table$G~data_table$I+data_table$C+data_table$H+data_table$A)
summary(fit_2)
plot(fit_2)

