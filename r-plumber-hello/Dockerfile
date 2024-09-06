# Base image https://hub.docker.com/r/rstudio/plumber
FROM rstudio/plumber

# Make directory in the container
RUN mkdir /home/r-env

# Copy R script to the container
COPY hello.R /home/r-env/hello.R

# Run the script 
CMD ["/home/r-env/hello.R"]


# to execute:
    # docker build -t r-plumber-hello .
    # docker run -p 8040:8000 r-plumber-hello
    # visit http://[ip address]:8040/echo
    # visit http://[ip address]:8040/echo?msg=howdy
    # call from r-httr2-request-hello