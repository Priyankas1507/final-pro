#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u priyankavijay -p dckr_pat_98Dx8iTWLuG96HX1jzNU1eSgMz0
    docker tag test priyankavijay/dev
    docker push priyankavijay/dev

elif [[ $GIT_BRANCH == "master" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u priyankavijay -p dckr_pat_98Dx8iTWLuG96HX1jzNU1eSgMz0
    docker tag test priyankavijay/prod 
    docker push priyankavijay/prod
fi
