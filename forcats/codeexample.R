library(forcats)

library(magrittr)

library(dplyr)

#############################

x <- factor(c( "A", "D", "B", "A", "B", "A", "A", "B", "B", "A", "C"))

fct_recode(x, O = "C", O = "D") # O for other

#############################

# Dropping Unused Levels

f <- factor(c("a", "b"), levels = c("a", "b", "c"))

f

fct_drop(f)

# Set only to restrict which levels to drop

fct_drop(f, only = "a")

fct_drop(f, only = "c")

#############################

gss_cat

table(gss_cat$partyid)

fct_count(gss_cat$partyid)

partyid2 <- fct_collapse(gss_cat$partyid,
   missing = c("No answer", "Don't know"),
   other = "Other party",
   rep = c("Strong republican", "Not str republican"),
   ind = c("Ind,near rep", "Independent", "Ind,near dem"),
   dem = c("Not str democrat", "Strong democrat")
)

fct_count(partyid2)

############################

x <- factor(rep(LETTERS[1:9], times = c(40, 30, 7, 5, 2, 1, 1, 1, 1)))

fct_other(x, keep = c("A", "B"))

fct_other(x, drop = c("A", "B"))

############################

f <- factor(c("a", "b", "c"))

fct_shuffle(f)

fct_shuffle(f)

#############################

set.seed(1337)

Fact <- LETTERS[rbinom(1000, 6, 0.25) + 1 ]

Fact <- factor(Fact, levels=c("A","B","C","D","E","F","G") )

Var1 <- sample(100:200, 1000, TRUE)

Var2 <- rexp(1000, 1.25) %>% round(2)

myDF <- data.frame(Fact, Var1, Var2)

