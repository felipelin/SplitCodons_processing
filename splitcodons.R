# SplitCodons
library(ape)
library(phylotools)

raw = read.FASTA("./input/sequence.fas")
n = 270 # individuals

for(j in 1:3){
  extract_dna = NULL
  extract_dna[1]=j
  for(i in 1:n){
    extract_dna[i+1]=j+3*i
  }
  write.FASTA(x = raw[extract_dna],
              file = paste("./output/Codon_",j,".fas",sep = ""))
}
