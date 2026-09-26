#---------------------------------------------------------------#
# ALY 3015 - Assignment 1                                        #
# Question 1: One-way ANOVA on the built-in PlantGrowth dataset  #
#---------------------------------------------------------------#
# NOTE: PlantGrowth ships WITH R (the 'datasets' package).
#       There is nothing to download -- just load it with data().

data(PlantGrowth)          # load the built-in dataset
str(PlantGrowth)           # 30 rows: 'weight' (numeric) + 'group' (factor)
head(PlantGrowth)

# ---- (i) How many groups are there? ----
levels(PlantGrowth$group)  # "ctrl" "trt1" "trt2"  -> 3 groups
table(PlantGrowth$group)   # 10 observations in each group

# Group means (helpful context, not strictly required)
aggregate(weight ~ group, data = PlantGrowth, FUN = mean)

# ---- (ii) Test the ANOVA: are the means equal? ----
fit <- aov(weight ~ group, data = PlantGrowth)
summary(fit)
# Look at Pr(>F). If p < 0.05, the group means are NOT all equal.

# ---- (iii) Box plot: which two groups look most similar? ----
boxplot(weight ~ group, data = PlantGrowth,
        main = "PlantGrowth: Weight by Group",
        xlab = "Group", ylab = "Dried weight",
        col = c("lightgray", "lightblue", "lightgreen"))

# ---- (iv) Which pairs are significantly different? ----
# Tukey's HSD does all pairwise comparisons and adjusts for multiple testing.
TukeyHSD(fit)
plot(TukeyHSD(fit))        # a pair is significant if its interval excludes 0

# ---- (v) Are the ANOVA assumptions satisfied? ----
# ANOVA assumes: (a) independent observations, (b) normally distributed
# residuals, (c) equal variances across groups (homogeneity).

# (b) Normality of residuals
shapiro.test(residuals(fit))          # p > 0.05 -> normality is reasonable
qqnorm(residuals(fit)); qqline(residuals(fit))

# (c) Homogeneity of variance
bartlett.test(weight ~ group, data = PlantGrowth)  # p > 0.05 -> equal variances OK
