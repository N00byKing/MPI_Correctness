# MPI-CorrBench
cd MPI-CorrBench/scripts

cd PARCOACH
./install_tool.sh
cd ..

./tool_runner_CI.sh PARCOACH
./tool_runner_CI.sh CIVL-1.21_5476

# Workaround incompatibility
apt -q -y install clang-tidy
./tool_runner_CI.sh MPI-Checker
cd ..

mkdir output
cp experiment/PARCOACH/results_PARCOACH.json output/
cp experiment/CIVL-1.21_5476/results_CIVL-1.21_5476.json output/
cp experiment/MPI-Checker/results_MPI-Checker.json output/

python3 visualization/human_eval.py > ../results_MPI-CorrBench.txt