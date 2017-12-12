FROM python:3.4-alpine

RUN apt-get update && apt-get -y install git
RUN git clone https://github.com/aboul3la/Sublist3r.git
WORKDIR Sublist3r/
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "sublist3r.py"]
