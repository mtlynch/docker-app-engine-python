FROM google/cloud-sdk:226.0.0-slim

RUN apt-get update
RUN set -x && \
    apt-get install --yes \
      google-cloud-sdk-app-engine-python \
      google-cloud-sdk-app-engine-python-extras

ENV PYTHONPATH "${PYTHONPATH}:/usr/lib/google-cloud-sdk/platform/google_appengine"
