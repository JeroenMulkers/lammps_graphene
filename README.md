Preparation
-----------

1. Install [lammps](http://lammps.sandia.gov/) (with reax package), consult the [manual](http://lammps.sandia.gov/doc/Manual.html) of lammps for instructions
2. Install [vmd](http://lammps.sandia.gov/) (visual molecular dynamics)
3. Read sections 2.6, 3.1 - 3.3 in the manual of lammps
4. Have a quick look at all the files in this repository
5. For python users: have a look at the [log.py](http://pizza.sandia.gov/doc/log.html) tool from the pizza.py module.

Tasks
-----

1. Use 'graphene.m' to create a small graphene sheet (only a single rectangular cell with 4 atoms is enough). Study briefly the format of the output file. You can read about the data format in the manual (see command 'read_data').
2. Study the input script 'profile.lmp'. Consult the manual if commands are not clear. Use this script to plot the energy in function of the distance between the carbon atoms. What is the interatomic distance for a relaxed graphene sheet? (Tip: start with an interatomic distance of 1nm).
3. Use 'graphene.m' to create a large relaxed graphene sheet with at least 200 atoms. Use 'tensiletest.lmp' to obtain the stress/strain curve. Determine the Young's modulus and the breaking stress/strain. Stretch in x and y direction. Which effect has the temperature on the breaking stress/strain?
4. Study the buckling of graphene under compression. This can be done with 'tensiletest.lmp'.
5. Use 'melting.lmp' to determine the melting temperature of graphene.
6. Redo task 3,4 and 5 for silicene. Use the reaxFF parameters of Si in 'ffield.reax.CHONSSi.2' and the silicene sheet defined in 'silicene.dat'. Make a comparison of the results for graphene and silicene.

Contact
-------

jeroen.mulkers@uantwerpen.be
