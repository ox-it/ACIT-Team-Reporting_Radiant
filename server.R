library(pushoverr) # http://www.r-bloggers.com/creating-reproducible-software-environments-with-packrat/
library(googlesheets)
library(DT)
library(DiagrammeR)
library(NeuralNetTools)
library(radiant)
library(shinyAce)


shinyServer(function(input, output, session) {
  
  ## Load googlesheet
  source(file = "data-processing.R", local = TRUE)

  ## source shared functions
	source("init.R", encoding = r_encoding, local = TRUE)
	source("radiant.R", encoding = r_encoding, local = TRUE)

# 	## for shiny-server
#  	if (!"package:radiant" %in% search()) {
#  		if (r_path == "..") {
#       for (file in list.files("../../R",
# 		      pattern="\\.(r|R)$",
# 		      full.names = TRUE)) {
# 
# 		  	source(file, encoding = r_encoding, local = TRUE)
# 		  }
# 		} else {
# 			radiant::copy_all(radiant)
#       set_class <- radiant::set_class
# 		}
# 	} else {
#     # environment(radiant) <- environment()
# 	  # copy_from(radiant, state_init, state_single, state_multiple)
# 	}

	## source data & analysis tools
  for (file in list.files(c("tools/app","tools/data"),
      pattern="\\.(r|R)$",
      full.names = TRUE)) {

  	source(file, encoding = r_encoding, local = TRUE)
  }

  ## save state on refresh or browser close
  saveStateOnRefresh(session)
})
