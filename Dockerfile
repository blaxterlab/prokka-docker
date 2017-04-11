FROM sjackman/prokka

COPY https://github.com/tseemann/prokka/blob/master/binaries/linux/tbl2asn /home/linuxbrew/.linuxbrew/Cellar/tbl2asn/23.7/bin/tbl2asn

RUN  chmod -R a+w /home/linuxbrew/.linuxbrew/Cellar/prokka/1.10/db/

ENTRYPOINT []
