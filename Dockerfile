FROM amazonlinux:latest
RUN yum -y install gzip aws-cli curl perl perl-XML-Parser
RUN mkdir /wks
COPY setup.sh /
#tmp
COPY discogs_20190901_releases-exc.xml.gz /wks
WORKDIR /
ENTRYPOINT ["/setup.sh"]