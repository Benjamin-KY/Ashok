FROM python:3.12.0a5-slim

LABEL name Ashok
LABEL src "https://github.com/ankitdobhal/Ashok"
LABEL creator ankitdobhal
LABEL desc "Incredible Fast Recon Swiss Army Knife."

RUN apk add git && git clone https://github.com/ankitdobhal/Ashok.git Ashok
WORKDIR Ashok
RUN pip install -r requirements.txt
RUN apk add ncurses
ENTRYPOINT [ "python3", "Ashok.py" ]