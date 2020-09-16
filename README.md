[![Build Status](https://travis-ci.com/bgruening/docker-galaxy-exome-seq.svg?branch=master)](https://travis-ci.com/bgruening/docker-galaxy-exome-seq)[![Docker Repository on Quay](https://quay.io/repository/bgruening/galaxy-exome-seq/status "Docker Repository on Quay")](https://quay.io/repository/bgruening/galaxy-exome-seq)
[![Gitter](https://badges.gitter.im/bgruening/docker-galaxy-stable.svg)](https://gitter.im/bgruening/docker-galaxy-stable?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

Galaxy Image for Genomic Variant Analysis
=========================================

:whale: Galaxy Docker repository for genomic variant analysis from NGS data (Galaxy Variant Analysis flavor)

# Installed tools

 * [BWA](http://bio-bwa.sourceforge.net/)
 * [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2)
 * [SnpEff](http://snpeff.sourceforge.net/)
 * [FASTQC](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
 * [SAMTools](http://samtools.sourceforge.net/)
 * [FreeBayes](https://github.com/ekg/freebayes)
 * [VarScan](http://dkoboldt.github.io/varscan/)
 * [lofreq](http://csb5.github.io/lofreq/)
 * [GEMINI](http://gemini.readthedocs.org)
 * [deepTools](http://fidelram.github.io/deepTools/)
 * [MultiQC](https://multiqc.info/)
 * [Qualimap](http://qualimap.bioinfo.cipf.es/)
 * [JBrowse](http://jbrowse.org/)
 * [Circos](http://circos.ca/)

# Requirements

 - [Docker](https://docs.docker.com/installation/) for Linux / Windows / OSX
 - [podman](https://podman.io/) as a convenient alternative for rpm-based Linux distributions
 - [Kitematic](https://kitematic.com/) for Windows / OS-X

# Training

To learn what kind of analyses you can perform with this Galaxy flavor, have a
look at the following
[Galaxy training network](https://training.galaxyproject.org/training-material/)
tutorials:

- [Exome sequencing data analysis for diagnosing a genetic disease](https://galaxyproject.github.io/training-material/topics/variant-analysis/tutorials/exome-seq/tutorial.html)
- [Identification of somatic and germline variants from tumor and normal sample pairs](https://training.galaxyproject.org/training-material/topics/variant-analysis/tutorials/somatic-variants/tutorial.html)
- [Mapping and molecular identification of phenotype-causing mutations](https://galaxyproject.github.io/training-material/topics/variant-analysis/tutorials/mapping-by-sequencing/tutorial.html)

# Usage

To launch:

```
docker run -d -p 8080:80 -p 8021:21 -p 8022:22 bgruening/galaxy-exome-seq
```

For more details about this command line or specific usage, please consult the
[`README`](https://github.com/bgruening/docker-galaxy-stable/blob/master/README.md) of the main Galaxy Docker image, on which the current image is based.

# Advanced cluster configuration

Galaxy and every tool can be configured to make optimal usage of cluster resources.
For this a configuration file with the name `job_conf.xml` is needed. You can read more
about this with more details in the [upstream documentation](https://docs.galaxyproject.org/en/latest/admin/jobs.html)
or by studying [advanced examples configurations](https://github.com/galaxyproject/galaxy/blob/dev/lib/galaxy/config/sample/job_conf.xml.sample_advanced).

For the Miracum project we have included one example [`job_conf.xml`](configs/job_conf.xml.miracum_sample).
This example configuration uses SLURM as scheduler and assignes 8 cores [(`slurm-8c`)](https://github.com/bgruening/docker-galaxy-exome-seq/blob/master/configs/job_conf.xml.miracum_sample#L165) to the tools `lofreq_call` and `bwa_mem`. By [default](https://github.com/bgruening/docker-galaxy-exome-seq/blob/master/configs/job_conf.xml.miracum_sample#L19) every tool gets one core.

To use this example configuration, or another one, please copy the `job_conf.xml.miracum_sample` in your export folder into the Galaxy `config` folder
(e.g. export/galaxy-central/config/job_conf.xml). If you copy your file to a different place (it needs to be accessible from inside the container) you can
also point Galaxy duing startup to this special config file with: `-e GALAXY_CONFIG_JOB_CONFIG_FILE=/export/job_conf.xml`

## Update Chrom-size files

From time to time, especially if you want to add new reference genome, it might be necessary to also deploy new chrom-size files. You can do this with

```bash
docker exec -t -i your_galaxy_conainer bash
cd /galaxy-central
python ./cron/build_chrom_db.py /export/galaxy-central/tool-data/shared/ucsc/chrom/
```

# Contributors

- Bjoern Gruening
- Bérénice Batut
- Wolfgang Maier

# Support & Bug Reports

You can file a [github issue](https://github.com/bgruening/galaxy-exom-seq/issues) or ask us on the [Galaxy help forum](https://help.galaxyproject.org/).
