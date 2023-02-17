#### Install jbrowse following the online instruction https://jbrowse.org/docs/installation.html
####
#### Transfer your custom genome/annotation directory to /var/www/html/jbrowse/
####
#### Run a preparation script to generate the annotation files for apollo. See a demo below:
```
sudo ../bin/prepare-refseqs.pl --fasta Dcor_assembly_v2_200326.fasta 
sudo ../bin/flatfile-to-json.pl --gff Dcor_assembly_v2_200326.genes.gff3 --trackType CanvasFeatures --trackLabel Dcor_assembly_v2_200326_genes --nameAttributes "ID,Name"
sudo ../bin/generate-names.pl --tracks Dcor_assembly_v2_200326_genes
sudo ../bin/flatfile-to-json.pl --gff Dcor_assembly_v2_200326.repeats.gff3 --trackType CanvasFeatures --trackLabel Dcor_assembly_v2_200326_repeats
sudo ../bin/generate-names.pl --tracks Dcor_assembly_v2_200326_repeats
sudo ../bin/add-bw-track.pl --bw_url RNAseq_tracks/Dcor_brain.sortedByCoord.out.bw --label Dcor_brain --key "Dcor_brain BigWig"
```
#### Transfer the whole directory to /root/jbrowse/ for apollo to host
