#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo -e "\n"
echo "#==========================================================="
echo "Start Times"
find . -type f -name "rplpl-slurm*.out" -printf "==> %f <==\n"
head -1 rplpl-slurm*.out
echo -e "\n"
find . -type f -name "rplspl-slurm*.out" -printf "==> %f <==\n"
head -1 rplspl-slurm*.out
echo "End Times"
find . -type f -name "rplpl-slurm*.out" -printf "==> %f <==\n"
tail -5 rplpl-slurm*.out
echo -e "\n"
find . -type f -name "rplspl-slurm*.out" -printf "==> %f <==\n"
tail -5 rplspl-slurm*.out
echo "#==========================================================="

