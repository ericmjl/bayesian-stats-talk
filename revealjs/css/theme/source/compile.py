import os

# Gets the original directory that the bash session is in
original_dir = os.getcwd()

# Change directory to that of this file.
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# Get all scss files
files = [f.split('.')[0] for f in os.listdir() if f[-5:] == ".scss"]

# Compile each file.
for f in files:
    os.system('sass {f}.scss > ../{f}.css'.format(f=f))

# Return back to the original directory.
os.chdir(original_dir)
