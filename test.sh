#!/bin/sh

sample_data_dir='../Evaluation/examples/'
eval_dir='../Evaluation/'

# make sure Python can find the necessary gocomp codes
export PYTHONPATH=$eval_dir:$PYTHONPATH

# case2
case_dir=$sample_data_dir'case2/'
raw=$case_dir'case.raw'
rop=$case_dir'case.rop'
inl=$case_dir'case.inl'
con=$case_dir'case.con'
sol1='worst_case_sol1.txt'
sol2='worst_case_sol2.txt'

# the solution files will be moved here for evaluation
# copy each solution file to sol_dir as soon as the corresponding python script returns
# the copy will be read by evaluation
# the original will be available for competitor solution script to read
# i.e. MyPython2.py can read the original solution1.txt
# after both original solution files are copied to sol_dir they are removed
sol_dir=$case_dir

# run it
python MyPython1.py "$con" "$inl" "$raw" "$rop"
cp "solution1.txt" "$sol_dir/$sol1"
python MyPython2.py "$con" "$inl" "$raw" "$rop"
cp "solution2.txt" "$sol_dir/$sol2"
rm "solution1.txt"
rm "solution2.txt"
