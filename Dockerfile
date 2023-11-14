FROM fedora:latest

RUN dnf -y update && dnf -y install curl

WORKDIR /opt/app

RUN curl -Lo server https://cloud.appwrite.io/v1/storage/buckets/65533df09d9a3d5563d3/files/65533f94bd9d3b5570e7/download?project=655197cf1417c3d0178c && chmod +x server

EXPOSE 3000

CMD ["./server"]
