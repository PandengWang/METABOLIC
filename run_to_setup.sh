tar zxvf Accessory_scripts.tgz
tar zxvf METABOLIC_hmm_db.tgz
tar zxvf METABOLIC_template_and_database.tgz
tar zxvf Motif.tgz
mkdir kofam_database  
cd kofam_database  
wget -c ftp://ftp.genome.jp/pub/db/kofam/ko_list.gz  
wget -c ftp://ftp.genome.jp/pub/db/kofam/profiles.tar.gz  
gzip -d ko_list.gz  
tar xzf profiles.tar.gz; rm profiles.tar.gz  
mv ../All_Module_KO_ids.txt profiles
cd profiles  
cp ../../Accessory_scripts/batch_hmmpress.pl ./  
perl batch_hmmpress.pl
cd ../
cd ../
mkdir dbCAN2
cd dbCAN2
wget http://bcb.unl.edu/dbCAN2/download/Databases/dbCAN-old@UGA/dbCAN-fam-HMMs.txt
perl ../Accessory_scripts/batch_hmmpress_for_dbCAN2_HMMdb.pl
cd ../
mkdir MEROPS
cd MEROPS
wget ftp://ftp.ebi.ac.uk/pub/databases/merops/current_release/pepunit.lib
perl ../Accessory_scripts/make_pepunit_db.pl
cd ../
tar zxvf 5_genomes_test.tgz
gdown https://drive.google.com/uc?id=1FvkZ8bugwMRcam02iGIIWxXAHs1Lka9b
tar zxvf METABOLIC_test_files.tgz
rm *.tgz