#---------------------------------------------------------------#
# ALY 3015 - Assignment 1                                        #
# Question 2: One-way ANOVA on the regionalsales data            #
#   (reg1, reg2, reg3) -- which regions differ in average sales? #
#---------------------------------------------------------------#
# STEP 0: In Excel, "Save As" -> CSV to create regionalsales.csv,
#         then set your working directory to where it lives:
#   setwd("C:/path/to/your/folder")

# ---- Import the CSV ----
sales_wide <- read.csv("regionalsales.csv")
str(sales_wide)      # columns: Years, reg1, reg2, reg3 (one row per year)
head(sales_wide)

# ---- Reshape from WIDE to LONG so ANOVA can read it ----
# ANOVA needs ONE column of values and ONE column of group labels.
# stack() stacks the three region columns into that shape.
long <- stack(sales_wide[, c("reg1", "reg2", "reg3")])
names(long) <- c("sales", "region")   # rename to friendly names
head(long)
table(long$region)                     # 56 observations per region

# Group means for context
aggregate(sales ~ region, data = long, FUN = mean)

# ---- (i) Boxplot + ANOVA ----
boxplot(sales ~ region, data = long,
        main = "Regional Sales by Region (1963-2018)",
        xlab = "Region", ylab = "Sales",
        col = c("lightblue", "lightgreen", "lightpink"))

fit <- aov(sales ~ region, data = long)
summary(fit)          # check Pr(>F): if < 0.05, the region means are NOT all equal

# ---- (ii) If significant, find WHICH pairs differ (post-hoc) ----
TukeyHSD(fit)         # any pair whose p adj < 0.05 is significantly different
plot(TukeyHSD(fit))   # a pair differs if its interval does NOT cross 0
