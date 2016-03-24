Preparation
-----------

1. Install lammps (with reax package), consult the manual of lammps for instructions
2. Install vmd (visual molecular dynamics)
3. Read sections 2.6, 3.1 - 3.3 in the manual of lammps
4. Have a quick look at all the files in this repository

Tasks
-----

1. Use hex.m to create a graphene layer. Study briefly the format of the output file. You can read about the data format in the manual (see command 'read_data').
2. Study the input script 'potential_profile.lmp'. Consult the manual if commands are not clear. Use this script to plot the energy in function of the lattice parameter. What is the lattice parameter for a relaxed graphene sheet. (Tip: start with a very small lattice parameter)
3. Use tensiletest.lmp to determine the Young modulus. Stretch in x and y direction.

Extra
-----

4. Make changes to the script tensiletest.lmp in order to simulate the rupture of a graphene sheet. Which force do you need?
5. Repeat the above for siliceen or for other empiric potentials of C (Brenner, Tersoff)

Contact
-------

jeroen.mulkers@uantwerpen.be
