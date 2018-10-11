'''
MyPython2.py

Entry to Python worst case feasible solver, (practically) untimed portion.
Syntax:

$ python MyPython2.py CON INL RAW ROP
'''

# built in imports
import sys, os

# modules for this code
sys.path.append(os.path.normpath('.')) # better way to make this visible?
import solver

args = sys.argv

con_name = args[1]
inl_name = args[2]
raw_name = args[3]
rop_name = args[4]
sol1_name = 'solution1.txt'
sol2_name = 'solution2.txt'

print '\nPython worst case feasible solver'
print 'MyPython2.py'

# set up solver
s = solver.Solver()

# read the data files
s.read_data(raw_name, rop_name, inl_name, con_name)

# write the solution
s.write_sol2(sol2_name)
