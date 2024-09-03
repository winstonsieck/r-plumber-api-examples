# This is a Plumber API to run in Docker
#
# Find out more about building APIs with Plumber:
#  https://www.rplumber.io/
#  https://posit.co/blog/creating-apis-for-data-science-with-plumber/


library(plumber)

#* @apiTitle Plumber Example API

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg="Hello World"){
  list(msg = paste0("The message is: '", msg, "'"))
}
