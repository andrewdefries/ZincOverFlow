
for i in *.sdf

do

babel $i -o copy -O $i.ROF.sdf -aP --filter "PUBCHEM_CACTVS_HBOND_DONOR<=5 & PUBCHEM_CACTVS_HBOND_ACCEPTOR<=10 & PUBCHEM_MOLECULAR_WEIGHT<=500 & PUBCHEM_XLOGP3<=5"


mv $i.ROF.sdf ROFiltereD/

done


