[![Build Status](https://travis-ci.org/bgruening/docker-galaxy-exome-seq.svg?branch=master)](https://travis-ci.org/bgruening/docker-galaxy-exome-seq)
[![Docker Repository on Quay](https://quay.io/repository/bgruening/galaxy-exome-seq/status "Docker Repository on Quay")](https://quay.io/repository/bgruening/galaxy-exome-seq)

Galaxy Image for Exome sequencing analysis
================================

:whale: Galaxy Docker repository for Exome sequencing data analysis (Galaxy exome sequencing flavor)

# Installed tools

 * [bowtie2](http://bowtie-bio.sourceforge.net/bowtie2)
 * [deepTools](http://fidelram.github.io/deepTools/)
 * [BWA](http://bio-bwa.sourceforge.net/)
 * [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2)
 * [SNPEff](http://snpeff.sourceforge.net/)
 * [FASTQC](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
 * [SAMTools](http://samtools.sourceforge.net/)
 * [FreeBayes](https://github.com/ekg/freebayes)
 * [GEMINI](http://gemini.readthedocs.org)
 * [BEDtools](http://bedtools.readthedocs.org)

# Requirements

 - [Docker](https://docs.docker.com/installation/) for Linux / Windows / OSX
 - [Kitematic](https://kitematic.com/) for Windows / OS-X

# Usage

To launch:

```
docker run -d -p 8080:80 -p 8021:21 -p 8022:22 bgruening/galaxy-exome-seq
```

For more details about this command line or specific usage, please consult the
[`README`](https://github.com/bgruening/docker-galaxy-stable/blob/master/README.md) of the main Galaxy Docker image, on which the current image is based.

# Contributers

- Bjoern Gruening
- Bérénice Batut

# Support & Bug Reports

You can file an [github issue](https://github.com/bgruening/galaxy-exom-seq/issues) or ask us on the [Galaxy development list](http://lists.bx.psu.edu/listinfo/galaxy-dev).
