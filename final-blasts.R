header <- c("ID", "% identity", "% coverage")

#AA blast vs. PG29
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/PG29")
blast = "WS77111vPG29-prot-blastp"
WS77111vPG29 <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vPG29_refined <- WS77111vPG29 %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vPG29_refined_sorted <- arrange(WS77111vPG29_refined, maxc)
names(WS77111vPG29_refined_sorted) <- header
View(WS77111vPG29_refined_sorted)
write.table(WS77111vPG29_refined_sorted, file="prot-blast-summary.tsv", append = FALSE, sep = "\t", quote = FALSE, col.names = TRUE, row.names = FALSE)

#AA blast vs. Q903
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/Q903")
blast = "WS77111vQ903-blast"
WS77111vQ903 <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vQ903_refined <- WS77111vQ903 %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vQ903_refined_sorted <- arrange(WS77111vQ903_refined, maxc)
names(WS77111vQ903_refined_sorted) <- header
View(WS77111vQ903_refined_sorted)
write.table(WS77111vQ903_refined_sorted, file="prot-blast-summary.tsv", append = FALSE, sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE)

#AA blast vs. Pabies
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/Pabies")
blast = "WS77111vPabies"
WS77111vPabies <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vPabies_refined <- WS77111vPabies %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vPabies_refined_sorted <- arrange(WS77111vPabies_refined, maxc)
names(WS77111vPabies_refined_sorted) <- header
View(WS77111vPabies_refined_sorted)
write.table(WS77111vPabies_refined_sorted, file="prot-blast-summary.tsv", append = FALSE, sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE)

#AA self blast
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid")
blast = "WS77111-self"
WS77111vSelf <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vSelf_refined <- WS77111vSelf %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vSelf_refined_sorted <- arrange(WS77111vSelf_refined, maxc)
names(WS77111vSelf_refined_sorted) <- header
View(WS77111vSelf_refined_sorted)
write.table(WS77111vSelf_refined_sorted, file="prot-blast-summary.tsv", append = FALSE, sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE)

##tRNA blast vs. PG29
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/PG29")
blast = "WS77111vPG29-tRNA"
WS77111vPG29 <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vPG29_refined <- WS77111vPG29 %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vPG29_refined_sorted <- arrange(WS77111vPG29_refined, maxc)
names(WS77111vPG29_refined_sorted) <- header
View(WS77111vPG29_refined_sorted)
write.table(WS77111vPG29_refined_sorted, file="tRNA-blast-summary.tsv", append = FALSE, sep = "\t", quote = FALSE, col.names = TRUE, row.names = FALSE)

##tRNA blast vs. Q903
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/Q903")
blast = "WS77111vQ903-tRNA"
WS77111vQ903 <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vQ903_refined <- WS77111vQ903 %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vQ903_refined_sorted <- arrange(WS77111vQ903_refined, maxc)
names(WS77111vQ903_refined_sorted) <- header
View(WS77111vQ903_refined_sorted)
write.table(WS77111vQ903_refined_sorted, file="tRNA-blast-summary.tsv", append = FALSE, sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE)

#tRNA blast vs. Pabies
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/Pabies")
blast = "WS77111vPabies-tRNA"
WS77111vPabies <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vPabies_refined <- WS77111vPabies %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vPabies_refined_sorted <- arrange(WS77111vPabies_refined, maxc)
names(WS77111vPabies_refined_sorted) <- header
View(WS77111vPabies_refined_sorted)
write.table(WS77111vPabies_refined_sorted, file="tRNA-blast-summary.tsv", append = FALSE, sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE)

#gene blast vs. PG29
setwd("/projects/spruceup/pglauca/WS77111/annotation/chloroplast-annotation/picea-glauca-plastid/PG29")
blast = "WS77111vPG29-genes"
WS77111vPG29 <- read.table(file = blast, sep = "\t", header = FALSE)
WS77111vPG29_refined <- WS77111vPG29 %>% group_by(V1) %>% summarize(max=max(V3), maxc=max(V13))
WS77111vPG29_refined_sorted <- arrange(WS77111vPG29_refined, maxc)
names(WS77111vPG29_refined_sorted) <- header
View(WS77111vPG29_refined_sorted)
write.table(WS77111vPG29_refined_sorted, file="gene-blast-summary.tsv", append = FALSE, sep = "\t", quote = FALSE, col.names = TRUE, row.names = FALSE)

#boxplot.stats
pident <- WS77111vPG29_refined$max
median(pident)
range(pident)
boxplot.stats(pident)
