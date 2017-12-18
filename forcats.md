* ``as_factor``  
* ``fct_anon``  
* ``fct_c``  
* ``fct_collapse``  
* ``fct_count`` 
* ``fct_drop``  
* ``fct_expand`` 
* ``fct_explicit_na``  
* ``fct_inorder``
* ``fct_lump`` 
* ``fct_other`` 
* ``fct_recode`` 
* ``fct_relabel`` 
* ``fct_relevel`` 
* ``fct_reorder`` 
* ``fct_rev``  
* ``fct_shift`` 
* ``fct_shuffle`` 
* ``fct_unify`` 
* ``fct_unique`` 
* ``gss_cat``  
* ``lvls``  
* ``lvls_union`` 


############################

fct_collapse :  Collapse factor levels into manually defined groups
fct_c : Concatenate factors, combining levels
fct_other : Replace levels with "other"


############################
fct_inorder 

Reorder factors levels by first appearance or frequency


f <- factor(c("b", "b", "a", "c", "c", "c"))
f
fct_inorder(f)
fct_infreq(f)
fct_inorder(f, ordered = TRUE)
fct_count Count entries in a factor

fct_drop Drop unused levels
fct_anon Anonymise factor levels
