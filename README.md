# R-Practical

In this course, I am learning the basics of R. The course is organized into different modules of exercises.
The excersise codes are divided into different parts exercise1.R,...
These Represent the parts of exercises from each final chapter of the book: [CompGenomR book](https://compgenomr.github.io/book/exercises.html)

## 1. Introduction to R Programming for Genomics

In this module, I explored the basics of R programming, mainly by completing exercises based on chapters 1 and 2 of the [CompGenomR book](https://compgenomr.github.io/book/exercises.html). It focused on the very fundamentals of R programming, including:

- **Basic Syntax**: I got familiar with the fundamental syntax in R, such as variables, assignment (`<-`), and basic data types like vectors, lists, and data frames.
- **Arithmetic Operations**: I learned to perform basic arithmetic operations (addition, subtraction, multiplication, etc.) and how to work with numbers in R.
- **Functions**: An introduction to R functions, including built-in functions and how to create my own custom functions. I practiced calling functions, passing arguments, and returning values.
- **Basic Data Structures**: The module covered how to create and manipulate vectors, matrices, and data frames—essential data structures for handling genomic data.
- **Control Structures**: I explored control structures such as `if`, `else`, and `for` loops, which are used to make decisions and repeat operations based on conditions.
- **Basic Data Import and Export**: I practiced importing and exporting genomic data from files like `.csv` and `.txt` using functions like `read.table()`, `write.table()`, and `write.csv()`.
- **Basic Plotting of Data**: I learned how to do Boxplots, Scatterplots, as well as Histograms in R, while also altering certain aspects of the plot, like the axis, orientation, ...

### Key Functions Covered:
- `c()` - Combining elements into vectors.
- `mean()`, `sd()` - Functions for basic statistical operations.
- `plot()` - Basic plotting function to visualize data.
- `read.table()` - Function for importing data.
- `write.table()` - Function for exporting data.

---

## 2. Working with Genomic Data

In this module, I learned how to work with genomic data in R. I explored how to read and manipulate data, especially in the context of genomic sequences. Key exercises involved importing genomic datasets (such as FASTA files), filtering and subsetting them, and visualizing genomic sequences using basic plotting functions in R. This module emphasized using functions like `read.table()`, `subset()`, and `plot()` to handle large genomic datasets efficiently.

---

## 3. Data Manipulation and Transformation

This section focused on data wrangling techniques, crucial for handling and cleaning genomic data. I worked with functions from the `dplyr` package, such as `mutate()`, `filter()`, and `arrange()`, to transform data and prepare it for further analysis. This module also covered the application of `tidyr` to reshape data and how to effectively combine datasets using functions like `merge()`.

---

## 4. Exploring Genomic Data with Bioconductor

In this module, I was introduced to Bioconductor, a repository of R packages specifically designed for the analysis of genomic data. Exercises involved using packages like `GenomicRanges`, `IRanges`, and `Biostrings` to manipulate genomic data and perform range-based operations. The module helped to understand how to deal with genomic intervals and sequences and how to perform basic analyses such as finding overlaps between genomic ranges.

---

## 5. Data Visualization for Genomics

Visualization plays a crucial role in interpreting genomic data. In this module, I learned how to use various visualization techniques to represent genomic data effectively. This involved using `ggplot2` for plotting genomic data, such as visualizing read counts or sequence distributions, and creating informative plots that help communicate findings clearly. Exercises covered plotting genomic data on chromosomes and generating plots like heatmaps, histograms, and scatter plots.

---

## 6. Statistical Analysis for Genomics

The focus of this module was on statistical analysis and hypothesis testing in the context of genomics. I applied various statistical tests to genomic data, including chi-square tests, t-tests, and ANOVA. This section also introduced me to more complex analyses such as differential expression analysis and data normalization. Exercises emphasized how to interpret results from statistical analyses and how to use R for basic bioinformatics workflows.

---

## 7. Introduction to Genomic Modelling and Machine Learning

In this advanced module, I was introduced to basic concepts in genomic modelling and machine learning. I learned how to build predictive models using genomic data, including linear regression and classification models. The exercises involved applying machine learning techniques to genomic datasets, evaluating the performance of the models, and interpreting their results.

