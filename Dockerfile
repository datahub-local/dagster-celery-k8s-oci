FROM python:3.11-slim

ARG DAGSTER_VERSION=1.7.0

# All packages are hard-pinned to `dagster`, so setting the version on just `DAGSTER` will ensure
# compatible versions.
RUN pip install \
    dagster==${DAGSTER_VERSION} \
    dagster-aws \
    dagster-celery-k8s \
    dagster-celery[flower,redis,kubernetes] \
    dagster-cron \
    dagster-dbt \
    dagster-embedded-elt \
    dagster-graphql \
    dagster-k8s \
    dagster-postgres \
    dagster-pyspark \
    dagster-ssh \
    dagster-toolbox \
    dagster-webserver
