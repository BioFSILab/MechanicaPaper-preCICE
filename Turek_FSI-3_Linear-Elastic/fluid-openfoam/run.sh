#!/bin/sh
set -e -u


fluentMeshToFoam -2D 1 Turek-Hron-Fluid-Mesh.msh

touch fluid-openfoam.foam

tools/run-openfoam.sh "$@"
. tools/openfoam-remove-empty-dirs.sh && openfoam_remove_empty_dirs
