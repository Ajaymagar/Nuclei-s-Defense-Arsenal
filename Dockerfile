FROM golang:1.20-bullseye

RUN go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

RUN go install -v github.com/tomnomnom/anew@latest && \
    go install -v github.com/projectdiscovery/notify/cmd/notify@latest

WORKDIR /app

COPY ./nuclei_scan .

COPY ./urls.txt .

COPY ./provider-config.yaml /root/.config/notify/provider-config.yaml


RUN chmod +x nuclei_scan


CMD ["sh" ,"nuclei_scan"]


# kubectl create job --from=cronjob/nuclei-scan-cronjob nuclei-scan-manual
