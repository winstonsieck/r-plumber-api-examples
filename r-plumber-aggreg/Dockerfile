# Base image https://hub.docker.com/r/rstudio/plumber
FROM rstudio/plumber

# Make directory in the container
RUN mkdir /home/r-env

# Install R dependencies
# RUN ["R", "-e", "install.packages('jsonlite')"]

# Copy R script to the container
COPY aggreg-api.R /home/r-env/aggreg-api.R

# Run the script 
CMD ["/home/r-env/aggreg-api.R"]


# to execute:
    # docker build -t r-plumber-aggreg .
    # docker run -p 8080:8000 r-plumber-aggreg
    # call from r-httr2-request-aggreg
