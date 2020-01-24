#!/bin/bash




echo 'Cleaning inputs ...'
rm -rf rec.pdb
rm -rf xtal-lig.pdb

echo 'Cleaning blastermaster generated files ...'
rm -rf working
rm -rf INDOCK
rm -rf dock64
rm -rf dock.csh
rm -rf dockfiles

echo 'Cleaning library files ...'
rm -rf ligand*
rm -rf dirlsit

echo 'Cleaning dock results ...'
rm -rf OUTDOCK
rm -rf extract_all.txt
rm -rf extract_all.sort.txt
rm -rf extract_all.sort.uniq.txt
rm -rf poses.mol2
rm -rf statistics.scored.zincid
rm -rf statistics.docked.zincid
