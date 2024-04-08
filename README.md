# Quartermaster Command Services

Site used for accessing the MegaMek set of data in a desktop and mobile friendly way without the need for Java to be installed.

## DB Setup

For local development, dev and test databases need to be setup as follows (using Docker):

```shell
docker run --name qcs-dev \
  -e POSTGRES_DB=qcs \
  -e POSTGRES_USER=qcs \
  -e POSTGRES_PASSWORD=password \
  -p 5432:5432 -d postgres:latest

docker run --name qcs-test \
  -e POSTGRES_DB=qcs \
  -e POSTGRES_USER=qcs \
  -e POSTGRES_PASSWORD=password \
  -p 5433:5432 -d postgres:latest
```
