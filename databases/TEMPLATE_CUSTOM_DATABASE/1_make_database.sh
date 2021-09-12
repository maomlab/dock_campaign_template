#!/bin/sh

# This makes a database for a set of pre-computed ligands from ZINC


# populate substances.smi having columns <smiles> <substance_id>
# the substance_id field should be at most 12 characters long
SUBSTANCES_FNAME=substances.smi

time $DOCKBASE/ligand/generate/build_database_ligand.sh --pre-tautomerized $SUBSTANCES_FNAME
echo "$(pwd)/$(basename $SUBSTANCES_FNAME .smi).db2.gz" > "database.sdi"


# used for enrichment
awk '{print substr($2, $2<length($2)-16+1?$2:length($2)-16+1, 16)}' substances.smi > substances.name

echo "Overall, $(zgrep '^E$' substances.db2.gz | wc -l) conformations for $(cat $SUBSTANCES_FNAME | wc -l) substances were prepared for docking."

