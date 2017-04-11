# prokka-docker

To run this inside blaxterlab, first ask a sysadmin to make you a member of the docker group.

To run Prokka on a bacterial fasta file:

```
ssh bigbang
cd /folder/containing/fastafile
docker pull blaxterlab/prokka
docker run -u $UID:$GROUPS -v `pwd`:/data -it --entrypoint '/bin/bash' blaxterlab/prokka
#this will give you a prompt like this (because your userid and group id on bigbang have no corresponding userid or groupid inside the docker container):
I have no name!@e7fbd02d061f:/home/linuxbrew$ 

# type the following commands inside the container
# first cd to the directory where the bacterial genome file was stored:
I have no name!@e7fbd02d061f:/home/linuxbrew$ cd /data
I have no name!@e7fbd02d061f:/home/linuxbrew$ prokka --setupdb
I have no name!@e7fbd02d061f:/home/linuxbrew$ prokka contigs.fasta

# this will put the output in `/data` inside the container, which is the same as the directory where you stored the bacterial genome fasta file.
