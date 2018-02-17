FROM quay.io/keboola/docker-custom-r:latest

RUN R -e 'install.packages(c("roxygen2"))'
COPY . /code/
WORKDIR /data/
CMD ["Rscript", "/code/main.R"]
