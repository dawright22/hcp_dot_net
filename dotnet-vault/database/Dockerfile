FROM mcr.microsoft.com/mssql/server:2017-latest
#microsoft/mssql-server-linux:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/import-data.sh

CMD /bin/bash ./entrypoint.sh