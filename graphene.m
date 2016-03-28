% Matlab script to create a lammps data file of a graphene sheet.

% INPUT PARAMETERS:
a  = 1.0;   % interatomic distance
nx = 10;    % number of repetitions in the x direction
ny = 30;    % number of repetitions in the y direction
filename = 'graphene.dat';
writeresults = true;
showresults = true;


% Size of the unit cell
A = 3*a;
B = sqrt(3)*a;

% Coordinates of the 4 atoms in the unit cell
base = [ 0.0 , 0.0 , 0.0 ;
         a/2 , B/2 , 0.0 ;
         A/2 , B/2 , 0.0 ;
         2*a , 0.0 , 0.0 ];

% Total number of atoms
N = length(base)*nx*ny;

% Calculate the coordinates of the atoms in the layer
coords = zeros(N,3);
id = 0;
for ix=0:(nx-1)
for iy=0:(ny-1)
    for iatom=1:length(base)
        id = id + 1;
        coords(id,:) = base(iatom,:)+[ix*A,iy*B,0];
    end
end
end


if showresults
    hold on
    plot(coords(:,1),coords(:,2),'o')
    plot(base(:,1),base(:,2),'.r','markersize',20)
    axis equal
end

if writeresults
    fid = fopen(filename,'w');
    fprintf(fid,'graphene a=%g\n',a);
    fprintf(fid,'%g atoms\n\n',N);
    fprintf(fid,'1 atom types\n\n');
    fprintf(fid,'0 %g xlo xhi\n',A*nx);
    fprintf(fid,'0 %g ylo yhi\n',B*ny);
    fprintf(fid,'-10 10 zlo zhi\n\n');
    fprintf(fid,'Masses\n\n');
    fprintf(fid,'1 12.0107\n\n');
    fprintf(fid,'Atoms\n\n');
    for i=1:N
        fprintf(fid,'%g 1 0 %g %g %g\n',i,coords(i,:));
    end
    fclose(fid);
end
