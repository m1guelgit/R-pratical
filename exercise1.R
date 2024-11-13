#
#_________________________________
#____________________________________________________________________
#Basic excersises
# 2.10.1 Computations in R

2+3
sqrt(36)
log10(1000)
log2(32)
x <- sum(2,3,4)
abs(5-145)
x <- sqrt(625)/5
y <- log10(1000)/5
x <- x*10000

#2.10.2 Data structures in R

vec <- c(1,2,3,4,5)
length(vec)
vec <- c(2:15)
vec
vec1 <- rep(x=4, times=10)
vec2 <- c(TRUE, TRUE, FALSE, FALSE)
vec_car <- c("PAX6","ZIC2","OCT4","SOX2")
vec_car[5]
vec_car[c(5,6)]
vec_car[5:1]
vec_car[1:5]


myvec=1:5
# the length of the logical vector 
# should be equal to length(myvec) 
myvec[c(TRUE,TRUE,FALSE,FALSE,FALSE)] 
myvec[c(TRUE,FALSE,FALSE,FALSE,TRUE)]

myvec > 3
myvec == 4
myvec <= 2
myvec != 4

myvec > 2

m <- matrix(1:16, nrow=5, ncol=3)
print(m)

m <- matrix(1:15, nrow=5, ncol=3, byrow = TRUE)
print(m)

m[1:3,1:3] #accessing 1:3 row, 1:3 column. Always first the row then the column

m[4:5, 1:3] #Extract the last two rows of the matrix you created earlier.

class(m[1:5,1:2])

x = m[1:5, 1]
class(x)
class(m[, 1])

df = data.frame(col1=1:5, col2=6:10, col3=11:15)
print(df)

df[1:2,1:2]

df["col2"]
df[, c("col2", "col3")]


df[, "col2"]
df$col2 #same result as df[, "col2"]

print(df)

v_l <- c(df[,"col1"]>3)
v_l
df[v_l, "col1"]

as.matrix(df)

df

mylist <- list(a=c(1,2,3),b=c("apple","banana"), d=df, e=c(20,21,22))
mylist$a

mylist$e
mylist[4]
tail(mylist)

mylist["a"]
mylist[1]

mylist["e"]

fa <- factor(c("a","b","c","d","e"))

myvec <- c("a","b","c","d","e")
myvec <- as.factor(myvec)

myvec
fa

fa <- as.character(fa)
fa

#_________________________________
#____________________________________________________________________
# 2.10.3 Reading in and writing data out in R

# Get the file path
cpgFilePath <- system.file("extdata", "CpGi.table.hg18.txt", package = "compGenomRData")

lines <- readLines(cpgFilePath, n = 10)
print(lines)
# Read the file into a data frame
cpgi.df <- read.table(cpgFilePath, header = TRUE, sep = "\t", row.names = NULL)

# Take a quick look at the data
head(cpgi.df)

#_________________________________
# cpgtFilePath=system.file("extdata",
#                          "CpGi.table.hg18.txt",
#                          package="compGenomRData")
# cpgtFilePath
# cpgiSepComma=read.table(cpgtFilePath,header=TRUE,sep=",")
# head(cpgiSepComma)

# This does not work since the data is separated by tab: "\t" instead of empty space.
# Therefore the read.table does not know where the data starts/ends

cpgtFilePath=system.file("extdata",
                         "CpGi.table.hg18.txt",
                         package="compGenomRData")
cpgiSepComma=read.table(cpgtFilePath,header=TRUE,sep="\t", stringsAsFactors=FALSE)
head(cpgiSepComma)

#Nothing changes here since the new version of R automatically sets stringsAsFactors=FALSE

lines <- readLines(cpgi.df, n = 10)
print(lines)
head(cpgi.df, 10)


cpgtFilePath=system.file("extdata",
                         "CpGi.table.hg18.txt",
                         package="compGenomRData")
cpgiSepComma=read.table(cpgtFilePath,header=FALSE,sep="\t")
head(cpgiSepComma)

#header=FALSE prevents the function from using the first row for column names
# It therefore sets default column names (e.g. V1,V2,V3,...)

cpgtFilePath=system.file("extdata",
                         "CpGi.table.hg18.txt",
                         package="compGenomRData")
cpgiSepComma=read.table(cpgtFilePath,header=TRUE,sep="\t",nrows = 10 ) #only first 10 rows
cpgiSepComma[1:10,]

cpgiSepComma[,1:3]

scan <- cpgi.df[cpgi.df$chrom == "chr1", ]


cpgi.df[cpgi.df$chrom == "chr1", ]

logical_vector <- cpgi.df$chrom == "chr1"
logical_vector[1:100]
length(logical_vector)
cpgi.df[logical_vector,]

cpgi.df$chrom


rn4FilePath=system.file("extdata",
                         "rn4.refseq.bed",
                         package="compGenomRData")
line <- readLines(rn4FilePath, n=10)
df1 = read.table(rn4FilePath, header = FALSE, sep = "\t" )
head(df1)

rn4FilePath2=system.file("extdata",
                         "rn4.refseq2name.txt",
                        package="compGenomRData")

df2 = read.table(rn4FilePath2, header = FALSE, sep = "\t" )
head(df2)


new.df <- merge(df1, df2, by.x = "V4", by.y = "V1", all = TRUE)
head(new.df)

length(new.df[,1])
length(df1)



#_________________________________
#____________________________________________________________________
# 2.10.4 Plotting in R
# 
# Please run the following code snippet for the rest of the exercises.

set.seed(1001)
x1=1:100+rnorm(100,mean=0,sd=15)
y1=1:100

plot(x1,y1)
plot(x1,y1, main = "Scatter")
plot(x1,y1, main = "Scatter", xlab = "X-Axis", ylab = "Y-Axis")
mtext(side=3,text="hi there")
mtext(side=2,text="hi there")
mtext(side=1,text="hi there")
mtext(side=4,text="hi there")


mtext(side=3,text=paste("Text", "Here"))


cor(x1,y1)
cor(y1, x1) #correlation between x1, y1

mtext(side=3,text=paste("Correlation:", round(cor(x1,y1),4)))

plot(x1,y1, main = "Scatter", xlab = "X-Axis", ylab = "Y-Axis",pch = 19, cex=0.4, col= "black")

#pch = 19, cex=0.4, type and size of dots e.g. pch = 1 / 16 / 19


hist(x1)
hist(x1, col ="red", xlab = "Bins", ylab = "Frequency", main = "X1 in a Hist")


boxplot(y1)
boxplot(x1, y1, horizontal = TRUE)

# Example data
x1 <- rnorm(100)  # Random data for boxplot
y1 <- rnorm(100)  # Random data for histogram

# Set up the plot layout (2 rows, 1 column)
#par(mfrow=c(2,1))  

# Set up the plot layout (1 rows, 2 column)
par(mfrow=c(1,2))

# Create the boxplot in the first row
boxplot(x1, main="Boxplot of x1", horizontal = FALSE)

# Create the histogram in the second row
hist(y1, main="Histogram of y1")


smoothScatter(x2,y2,
              colramp=heat.colors) 

smoothScatter(x2,y2,
              colramp=colorRampPalette(c("white","blue",
                                         "green","yellow","red"))) 
smoothScatter(x2,y2,
              colramp = colorRampPalette(c("white","blue", "green","yellow","red"))) 





#_________________________________
#____________________________________________________________________
# 2.10.5 Functions and control structures (for, if/else, etc.)

cpgtFilePath=system.file("extdata",
                         "CpGi.table.hg18.txt",
                         package="compGenomRData")
cpgi=read.table(cpgtFilePath,header=TRUE,sep="\t")
head(cpgi)

hist(cpgi$perGc, xlab = "Percentage C+G")

boxplot(cpgi$perGc, horizontal = TRUE, xlab = "Percentage C+G")

GCper = 80

if(GCper < 60){
  result = "low"
  cat("low")
}else if(GCper > 75){  # check if GC value is higher than 75,      
  #assign "high" to result
  result="high"
  cat("high")
}else{ # if those two conditions fail then it must be "medium"
    result="medium"
  }

result

GCclass <- function(my.gc){
  if(my.gc < 60){
    result = "low"
    #cat("low")
  }else if(my.gc > 75){  # check if GC value is higher than 75,      
    #assign "high" to result
    result="high"
    #cat("high")
  }else{ # if those two conditions fail then it must be "medium"
    result="medium"}
    
    return(result)
  
}

gcValues=c(10,50,70,65,90)
for( i in gcValues){
  result = GCclass(i)
  print(result)
}


lapply(gcValues, GCclass)

sapply(gcValues, GCclass)


low_high_medium <- list(c(gcValues<60), c(gcValues>75), c(gcValues>=60) & c(gcValues<=75))

low_1 <- rep("low", length(gcValues))
high_1 <- rep("high", length(gcValues))
med_1<- rep("medium", length(gcValues))

low_1[low_high_medium[[1]]]
high_1[low_high_medium[[2]]]
med_1[low_high_medium[[3]]]




