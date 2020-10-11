#!/bin/bash
set -ex

pip install planemo

wget https://raw.githubusercontent.com/galaxyproject/training-material/master/topics/variant-analysis/tutorials/somatic-variants/workflows/somatic_variants_tutorial_workflow-test.yml
wget https://raw.githubusercontent.com/galaxyproject/training-material/master/topics/variant-analysis/tutorials/somatic-variants/workflows/somatic_variants_tutorial_workflow.ga

#planemo test --galaxy_url "$BIOBLEND_GALAXY_URL" --galaxy_user_key "$BIOBLEND_GALAXY_API_KEY" \
#    --no_shed_install --engine external_galaxy somatic_variants_tutorial_workflow.ga

planemo test --galaxy_url http://localhost:8080 --galaxy_user_key "fakekey" \
    --no_shed_install --engine external_galaxy somatic_variants_tutorial_workflow.ga


