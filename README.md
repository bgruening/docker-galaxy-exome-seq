[![Docker Repository on Quay](https://quay.io/repository/bgruening/galaxy-exome-seq/status "Docker Repository on Quay")](https://quay.io/repository/bgruening/galaxy-exome-seq)
[![Gitter](https://badges.gitter.im/bgruening/docker-galaxy-stable.svg)](https://gitter.im/bgruening/docker-galaxy-stable?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


MIRACUM Galaxy Image for Genomic Variant Analysis
=================================================

This image provides Galaxy release 20.09 and all tools required to run the
MIRACUM workflows for somatic variant calling.

You can launch a fully functional Galaxy from this image via:

```
docker run -d -p 8080:80 -p 8021:21 -p 8022:22 bgruening/galaxy-exome-seq:miracum_20.09
```

Usage details of the image are as described for the
[galaxy-stable](https://github.com/bgruening/docker-galaxy-stable/blob/20.09/README.md)
parent image, in particular:

- the image is based on Ubuntu 18.04 LTS
- it uses PostgreSQL version 11.5, which means **users of the previous
  ``miracum_19.01`` image will have to migrate their database to this new
  version**.
- The preconfigured Galaxy ``admin`` user has the password ``password`` and
  the API key ``fakekey`` (for users of ``miracum_19.01``: note that both the
  password and the API key have changed compared to the old version).

For users of the previous ``miracum_19.01`` image the processes of upgrading
Galaxy to the new version and of upgrading the postgreSQL database are
described in the
[Upgrading images](https://github.com/bgruening/docker-galaxy-stable/blob/20.09/README.md#upgrading-images--toc)
and the
[PostgreSQL migration](https://github.com/bgruening/docker-galaxy-stable/blob/20.09/README.md#postgresql-migration--toc)
sections of the parent image usage guide, respectively.

# Workflows and auxillary data

The workflow definition files, variants and genes annotation data, example
configuration files and documentation required to run actual analyses with
this image are available from our accompanying
[MIRACUM-Pipe-Galaxy](https://github.com/AG-Boerries/MIRACUM-Pipe-Galaxy) repo.

# Requirements

 - [Docker](https://docs.docker.com/installation/) for Linux / Windows / OSX
 - [podman](https://podman.io/) as a convenient alternative for rpm-based Linux distributions
 - [Kitematic](https://kitematic.com/) for Windows / OS-X

# Contributors

- Bjoern Gruening
- Bérénice Batut
- Wolfgang Maier

# Support & Bug Reports

You can file a [github issue](https://github.com/bgruening/galaxy-exom-seq/issues) or ask us on the [Galaxy help forum](https://help.galaxyproject.org/).
