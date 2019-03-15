# CLOC Sloccount Wrapper #

This is a small docker container which can be used in a CI/CD Pipeline to generate cloc and sloccount compatible reports by executing the
cloc executable and transforming the report into sloccount.

There does exist a docker container on [Docker Hub](https://cloud.docker.com/u/xcnt/repository/docker/xcnt/cloc-sloccount-wrapper/general).

Execution:
```
docker run -v $(pwd):/data xcnt/cloc-sloccount-wrapper:stable --exclude-d vendor .
```
This will execute the cloc script with the passed parameters and output a "cloc.xml" and a sloccount compatible "sloccount.sc" in the current working directory.

At XCNT this script is used to implement a simple LOC check in the Jenkins pipeline via the [SLOCCount Plugin](https://wiki.jenkins.io/display/JENKINS/SLOCCount+Plugin).
