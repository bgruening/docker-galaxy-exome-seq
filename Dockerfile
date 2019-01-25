# Galaxy - Exome Sequencing Pipeline

FROM quay.io/bgruening/galaxy-ngs-preprocessing:18.09

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Exome Sequencing

# Install tools
ADD exome_seq.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs
