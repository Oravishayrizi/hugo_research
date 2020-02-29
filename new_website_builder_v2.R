### WD ###
setwd("C:/R/new") # This should be an empty folder


# Install blogdown and hugo - uncomment and install if needed
#install.packages("blogdown")
#blogdown::install_hugo(force = TRUE)
library(blogdown)

#First option
new_site(theme = "gcushen/hugo-academic",
         sample = TRUE,
         theme_example = TRUE,
         empty_dirs = FALSE,
         to_yaml = TRUE)

# fill relevants field in Config.toml and config folder.

#Optional

#### Research Section ####
download.file(destfile = "temp.zip",
              url = "https://github.com/Oravishayrizi/hugo_research/archive/master.zip", mode = "wb")

dir.create("layouts/partials/widgets/",recursive = TRUE)
### Add a reaserach tab
unzip("temp.zip",files = c("research/index.md","research/research.md"), exdir ="content",overwrite = TRUE)
unzip("temp.zip",files ="research.html", exdir ="layouts/partials/widgets",overwrite = TRUE)

#clean your folder
file.remove("temp.zip")
unlink("zip_folder", recursive = TRUE)
  #Change Config files...

#### Website Icon ####
{
# Old version- not needed anymore 
# Run this command
# file.copy(from = "themes/hugo-academic/layouts/partials/site_head.html",to="layouts/partials/",overwrite = TRUE )
# To change the ugly icon
# look for the line starts with : "<link rel="icon" type="image/png""

# and replace them by
#   <link rel="icon" type="image/png" href="{{ "img/icon.png" | relURL }}">
#   <link rel="apple-touch-icon" type="image/png" href="{{ "img/icon-192.png" | relURL }}">
}
# New version
dir.create("assets/images/",recursive = TRUE)
# Put your desired icon inages
# Should be named "icon.png" and be 512*512 pixel 


#### Empty Pages ####
#Hugo creates many empty pages that appear on google, to remove most of them

#I pasted this line
# disableKinds=["taxonomyTerm" ]
# in config.toml file, under
## Advanced options below ##

