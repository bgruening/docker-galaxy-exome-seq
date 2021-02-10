# Galaxy - Genomic Variant Analysis Pipelines

FROM quay.io/bgruening/galaxy:20.09

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND MIRACUM Genomic Variant Analysis
ENV GALAXY_CONFIG_SANITIZE_ALL_HTML false

# MIRACUM-style PDF Reports
ADD markdown_export.css $GALAXY_CONFIG_DIR/markdown_export.css

# Install tools
ADD data_managers.yaml $GALAXY_ROOT/data_managers.yaml
RUN install-tools $GALAXY_ROOT/data_managers.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
#ADD mimod.yaml $GALAXY_ROOT/tools1.yaml
#RUN install-tools $GALAXY_ROOT/tools1.yaml && \
#    /tool_deps/_conda/bin/conda clean --tarballs && \
#    rm /export/galaxy-central/ -rf
ADD genetic_disease.yaml $GALAXY_ROOT/tools2.yaml
RUN install-tools $GALAXY_ROOT/tools2.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
ADD somatic_variants.yaml $GALAXY_ROOT/tools3.yaml
RUN install-tools $GALAXY_ROOT/tools3.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs && \
    rm /export/galaxy-central/ -rf
