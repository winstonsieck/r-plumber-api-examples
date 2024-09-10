# Simple API examples in R using Plumber and Docker

Create, run, and access APIs with these simple example R scripts

Each example is associated with two folders: 1) A "plumber" folder to set up the API, and 2) An "httr2" folder to request info from the API. The "plumber" folders include example packages that build off of the [rstudio/plumber image](https://hub.docker.com/r/rstudio/plumber) on docker hub. To get started:

-   log into a docker supported server with admin access (see below for one setup)

-   upload a folder with "plumber" in its name to the root dir

-   cd into the folder

-   build and run as described in the folder's Dockerfile

-   download the corresponding folder named with "httr2" to your local machine

-   open and run the Rmd file in Rstudio to see results from the API

As described in this [article](https://www.r-bloggers.com/2022/03/creating-apis-for-data-science-with-plumber/), you can run plumber APIs in RStudio on your local machine and see results by clicking on "Run API."

The examples here help get started running R APIs with plumber inside docker containers on a server - and then requesting results from local:

1)  r-plumber-hello: Sets up a plumber API that returns "hello world." The script is an even simpler version of the R plumber [intro example](https://www.rplumber.io/articles/introduction.html). The Dockerfile gives instructions to build and run the API in a container. It also shows how you can access this example with a GET request right from your browser, before moving on to using httr2 in RStudio.

2)  r-docker-aggreg: The API accepts data in json format, converts to data frame, aggregates the data, and sends back results in a list. The corresponding Rmd file uses httr2 to POST the input data to the API and request the results.

If needed, you can get a VM with Docker up and running pretty easily with this [Digital Ocean setup](https://marketplace.digitalocean.com/apps/docker "Docker Droplet"). Posit recommends 2 cores and 4G memory for testing/sandboxing. The [guidance](https://support.posit.co/hc/en-us/articles/115002344588-Configuration-and-sizing-recommendations) is for Posit products, but requirement "depends mostly on R."

You can also try running some [example R scripts with Docker](https://github.com/winstonsieck/simple-r-script-docker) on a server using this same setup.
