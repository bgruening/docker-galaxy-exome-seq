# Galaxy - Genomic Variant Analysis Pipelines

FROM quay.io/bgruening/galaxy:19.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Genomic Variant Analysis
ENV GALAXY_CONFIG_SANITIZE_ALL_HTML false

ADD install-tools.sh /usr/bin/install-tools
RUN chmod +x /usr/bin/install-tools
RUN chown galaxy:galaxy /galaxy-central/ -R
# Install tools
ADD data_managers.yaml $GALAXY_ROOT/data_managers.yaml
RUN install-tools $GALAXY_ROOT/data_managers.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
ADD mimod.yaml $GALAXY_ROOT/tools1.yaml
RUN install-tools $GALAXY_ROOT/tools1.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
ADD genetic_disease.yaml $GALAXY_ROOT/tools2.yaml
RUN install-tools $GALAXY_ROOT/tools2.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
ADD somatic_variants.yaml $GALAXY_ROOT/tools3.yaml
RUN install-tools $GALAXY_ROOT/tools3.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
