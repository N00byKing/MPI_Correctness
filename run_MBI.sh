# MPI Bugs Initiative
cd MpiBugsInitiative

python3 MBI.py -c generate

python3 MBI.py -x parcoach -c run
python3 MBI.py -x civl -c run

echo "Results from the MPI Bugs Initiative:\n" > ../results_MpiBugsInitiative.txt
python3 MBI.py -x parcoach -c stats >> ../results_MpiBugsInitiative.txt
python3 MBI.py -x civl -c stats >> ../results_MpiBugsInitiative.txt

cd ..
