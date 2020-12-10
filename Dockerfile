FROM scratch
COPY ./subconverter/. .
COPY ./Provider Provider
COPY ./Custom Custom
COPY ./dlercloud.ini .
COPY ./dlercloudssid.ini .
EXPOSE 25500
ENTRYPOINT  ["./subconverter"]