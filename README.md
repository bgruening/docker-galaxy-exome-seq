[![Build Status](https://travis-ci.org/bgruening/docker-galaxy-exome-seq.svg?branch=master)](https://travis-ci.org/bgruening/docker-galaxy-exome-seq)
[![Docker Repository on Quay](https://quay.io/repository/bgruening/galaxy-exome-seq/status "Docker Repository on Quay")](https://quay.io/repository/bgruening/galaxy-exome-seq)
[![Gitter](https://badges.gitter.im/bgruening/docker-galaxy-stable.svg)](https://gitter.im/bgruening/docker-galaxy-stable?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

Galaxy Image for Genomic Variant Analysis
=========================================

:whale: Galaxy Docker repository for genomic variant analysis using NGS data (Galaxy Variant Analysis flavor)

# Installed tools

## NGS reads quality control and preprocessing
 * [FASTQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc)
 * [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic)
## NGS reads mapping
 * [BWA](http://bio-bwa.sourceforge.net)
 * [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2)
## SAM/BAM processing
 * [Samtools](https://www.htslib.org)
## Variant calling /annotation
 * [FreeBayes](https://github.com/ekg/freebayes)
 * [BCFtools](https://www.htslib.org)
## Variant annotation
 * [SNPEff](http://snpeff.sourceforge.net)
 * [GEMINI](https://gemini.readthedocs.io)
 * [MiModD](https://mimodd.readthedocs.io)
## SAM/BAM and VCF/BCF data handling
 Selected tools from:
 * [BamTools](https://github.com/pezmaster31/bamtools/wiki)
 * [Samtools](https://www.htslib.org)
 * [BCFtools](https://www.htslib.org)

# Requirements

 - [Docker](https://docs.docker.com/installation/) for Linux / Windows / OSX
 - [Kitematic](https://kitematic.com/) for Windows / OS-X

# Training

The image aims at being compatible with all [Galaxy Training Network](https://training.galaxyproject.org/training-material) workflows from the [Variant Analysis](https://training.galaxyproject.org/training-material/topics/variant-analysis) section. Currently, you can use it to work through the following tutorials:

 - [Exome sequencing data analysis for diagnosing a genetic disease](https://training.galaxyproject.org/training-material/topics/variant-analysis/tutorials/exome-seq/tutorial.html)
 - [Identification of somatic and germline variants from tumor and normal sample pairs](https://training.galaxyproject.org/training-material/topics/variant-analysis/tutorials/somatic-variants/tutorial.html)
 - [Mapping and molecular identification of phenotype-causing mutations](https://training.galaxyproject.org/training-material/topics/variant-analysis/tutorials/mapping-by-sequencing/tutorial.html)

# Usage

To launch:

```
docker run -d -p 8080:80 -p 8021:21 -p 8022:22 bgruening/galaxy-exome-seq
```

For more details about this command line or specific usage, please consult the
[`README`](https://github.com/bgruening/docker-galaxy-stable/blob/master/README.md) of the main Galaxy Docker image, and in particular, the sections:

 - [the introductory section](https://github.com/bgruening/docker-galaxy-stable#Usage)

   which explains how to persist Galaxy-generated data across container launches

 - [On-demand reference data with CVMFS](https://github.com/bgruening/docker-galaxy-stable#cvmfs)

   to learn how to reuse publicly available reference genome, index and other
   data efficiently

# Contributors

- Bjoern Gruening
- Bérénice Batut
- Wolfgang Maier

# Support & Bug Reports

You can file a [github issue](https://github.com/bgruening/galaxy-exom-seq/issues), or ask us on the [Galaxy Help forum](https://help.galaxyproject.org/) or on the [Galaxy Development mailing list](https://lists.galaxyproject.org/lists/galaxy-dev.lists.galaxyproject.org/).
