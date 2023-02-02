set.seed(1234)

# Definiere Grösse der Stichprobe und Parameter
n <- 3000
pi1 <- 1
b0 <- 6
b1 <- 1/10
b2 <- 1/100
b3 <- 1/2

# Ziehe Instrument
z <- rbinom(n,1,0.7)

# Ziehe Omitted Variable
ov <- rnorm(n,0,1)

# Generiere endogene Variable
d <- 12 + pi1 * z + 1/2 * ov + rnorm(n,0,2)

# Generiere abhängige Variable
y <- b0 + b1 * d + b2 * z + b3 * ov + rnorm(n,0,1/2)