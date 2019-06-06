# Galaxy - Genomic Variant Analysis Pipelines

FROM bgruening/galaxy-stable:19.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND Genomic Variant Analysis
ENV GALAXY_CONFIG_SANITIZE_ALL_HTML false

# Install tools
ADD genetic_disease.yaml $GALAXY_ROOT/tools1.yaml
ADD somatic_variants.yaml $GALAXY_ROOT/tools2.yaml
ADD mimod.yaml $GALAXY_ROOT/tools3.yaml
ADD all_latest.yaml $GALAXY_ROOT/tools4.yaml
ADD data_managers.yaml $GALAXY_ROOT/data_managers.yaml
RUN install-tools $GALAXY_ROOT/tools1.yaml && \
    install-tools $GALAXY_ROOT/tools2.yaml && \
    install-tools $GALAXY_ROOT/tools3.yaml && \
    install-tools $GALAXY_ROOT/tools4.yaml && \
    install-tools $GALAXY_ROOT/data_managers.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs

