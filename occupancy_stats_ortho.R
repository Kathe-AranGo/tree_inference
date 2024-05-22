#############################
#You'll need to modify this script to specify your own ingroups and outgroups. 
#Also, play around with the minimum number of taxa to indicate in the MO analyses (35 here). 
#For this, create a matrix occupancy stats plot as follows
a <- as.numeric(read.table("/Users/katherin_ag/Dropbox/PhD/R_scripts/tree_inference/Campanulaceae/ortho_stats")[,1])

a <- sort(a, decreasing=TRUE)

pdf(file="/Users/katherin_ag/Dropbox/PhD/R_scripts/tree_inference/Campanulaceae/taxon_occupancy.pdf")                

plot(a, type="l", lwd=3, ylab="Number of Taxa in Each Ortholog")
dev.off()