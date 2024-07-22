github.table <- function(x){ # Suit data frame for Github READ.ME or Wiki
  
  L <- NULL # Put borders between values
  
  for (n in 1:nrow(x)){ L <- c(L, sprintf("| %s |", paste0(x[n,],
                                                           collapse = " | ")))}
  
  R <- rbind.data.frame(paste("|---|---|---|---|"), data.frame(L))
  
  colnames(R) <- sprintf("| %s |", paste0(colnames(x), collapse = " | "))
  
  print(R, row.names = F) # Reduced rownames
}
github.table(nest.df1) # Test
