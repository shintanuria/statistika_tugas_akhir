library(readxl)
datas <- read_excel('D:/KULIAH/semester 3/statistika/tugas akhir/implementasi/data.xlsx')
datav <- read.csv('D:/KULIAH/semester 3/statistika/tugas akhir/implementasi/pengeluaran.csv')
datas

# range
maksimal <- max(datav$pengeluaran)
minimal <- min(datav$pengeluaran)
ranges <- maksimal - minimal
ranges

# rata rata
rata <- sum(datas$xi * datas$fi)/sum(datas$fi)
print(rata)

# simpangan rata rata
xix <- datas$xi - rata
fixix <- fi * xix
rs <- 1/n * sum(fixix)
rs

# simpangan baku
xix2 <- xix * xix
fixix2 <- fi * xix2
varian <- 1/n * sum( xix2)
varian

sb <- sqrt(varian)
sb

# hipotesis rata-rata
n <- length(datav$pengeluaran)
uo <- 45000
atas <- rata - uo
bawah <- sb*sqrt(n)
z <- atas/bawah
z



