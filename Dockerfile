FROM scratch
COPY ./subconverter/. .
COPY ./Provider Provider
COPY ./Custom Custom
EXPOSE 25500
ENTRYPOINT  ["./subconverter"]