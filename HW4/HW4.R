# R1
p = 0.5
q = 0.5

counts <- table(coinflipcounts$CountTilHeads)
barplot(counts, main = "count distribution", xlab = "number of flips")

# R3
1- pbinom(1099, 2018, 0.55)
