# 2 Sample Script


# Standard Components of R Script -----------------------------------------

# Library calls (to load functions you need for pulling data, wrangling/analyzing data, etc.)
# To call an R package, it must already be loaded.
#
# If the package is on CRAN, this can be done by navigating to the Packages tab on the right
# and selecting Install then typing the package name in

# If the package is not on CRAN, it will need to be installed from Github, .tar file, or another method.
# Rnssp is not published on CRAN, so it needs to be installed using the devtools package unless you
# are using the NSSP Posit Workbench, where it is installed by default

install.packages("devtools")

# Once devtools is installed, you can either load the devtools package using library() or if you
# only need it once like we do, you can call the package followed by double colons to denote you
# want to use a function in a package without loading it into your R session.

devtools::install_github("cdcgov/Rnssp")

# Or:
library(devtools)
install_github("cdcgov/Rnssp")

library(Rnssp)

# We also need a few other packages, so be sure to install:

# Tidyverse
install.packages("tidyverse")

# And then load it using:
library(tidyverse)

# The tidyverse loads dplyr, purrr, ggplot2, lubridate, stringr, tidyr, forcats, and the tibble package
# These will be sufficient for >50% of ESSENCE-specific analysis in R.

# After we load libraries, we may want to include some dynamic fields for later use
# This is not required, but is part of my typical workflow unless I know I'll just
# be using a query once. This allows us to update the date dynamically if we run the code
# at a later date

# Guard band of 4 days
endDate <- format(Sys.Date() - 4, "%d%b%Y")

# Then the previous three months or 90 days of data
startDate <- format(Sys.Date() - 94, "%d%b%Y")



# Now we can generate an ESSENCE query, pull data, and analyze it.

# To show the difference between a script and an R Markdown file, I'll include the same visuals here.

# Statistical output renders in the console
summary(cars)

# plots and most tables render in the "Plots" pane to your lower right
plot(pressure)
