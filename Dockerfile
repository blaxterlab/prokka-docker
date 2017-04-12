FROM sjackman/prokka

COPY ftp://ftp.ncbi.nih.gov/toolbox/ncbi_tools/converters/by_program/tbl2asn/linux64.tbl2asn.gz /home/linuxbrew/.linuxbrew/Cellar/tbl2asn/23.7/bin/tbl2asn.gz

RUN gunzip /home/linuxbrew/.linuxbrew/Cellar/tbl2asn/23.7/bin/tbl2asn.gz

RUN  chmod -R a+w /home/linuxbrew/.linuxbrew/Cellar/prokka/1.10/db/

ENTRYPOINT []
