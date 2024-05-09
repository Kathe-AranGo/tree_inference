library(dplyr)

putative_paralogs<-read.table('/Users/katherin_ag/Dropbox/PhD/R_scripts/tree_inference/paralog_report.tsv',head=T)
putative_paralogs
#ncol(putative_paralogs)

subset<-putative_paralogs[colSums(putative_paralogs>1)>0]

putative_paralogs_subset<-putative_paralogs %>% select_if(~any(. > 1))
#ncol(subset)

#write.csv(putative_paralogs_subset,"~/Desktop/putative_paralogs_subset.csv", row.names=F)

col_names<-colnames(putative_paralogs_subset)
write.table(col_names,"/Users/katherin_ag/Dropbox/PhD/R_scripts/tree_inference/putative_paralogs_list.txt",row.names = F)
