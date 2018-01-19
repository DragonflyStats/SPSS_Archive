
############################

# fct_collapse :  Collapse factor levels into manually defined groups
# fct_c : Concatenate factors, combining levels
# fct_other : Replace levels with "other"

############################

# fct_inorder 

# Reorder factors levels by first appearance or frequency

f <- factor(c("b", "b", "a", "c", "c", "c"))
f
fct_inorder(f)
fct_infreq(f)
fct_inorder(f, ordered = TRUE)

# fct_count Count entries in a factor
# fct_drop Drop unused levels
# fct_anon Anonymise factor levels
