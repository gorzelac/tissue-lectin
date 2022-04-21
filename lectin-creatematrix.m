files=280;  #indicates how many text files are merged within the 256x256 matrix


a=0;
matrix = int32([a,a;a,a]);
filename1="results-lectin"; #load lectin staining intensity from text file; e.g. intensity measured by imageJ in a ROI
filename2="results-vessel"; #load vascular staining intensity from text file
filetype=".txt";

#build matrix 256x256
i=0;

do
matrix = [matrix,matrix];
matrix = [matrix;matrix];
i++;
until (i==7)

n=0;
do
file1=[filename1 int2str(n) filetype];
file2=[filename2 int2str(n) filetype];
[line, intensity1] = textread(file1,"%f %f","headerlines",1); # intensities per ROI are organized in one column
[line, intensity2] = textread(file2,"%f %f","headerlines",1);
n++;
intensity1=int32(intensity1);
i=0;
do
i++;
matrix(int32(intensity1(i)+1),int32(intensity2(i))+1)=matrix(int32(intensity1(i)+1),int32(intensity2(i))+1)+1;
until (i==length(intensity2)-1)


until (n==files)

save matrix.txt matrix -ascii;
clear();


