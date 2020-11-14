FROM pypy:3.7

RUN apt-get update && \
    apt-get install -y libblas-dev liblapack-dev gfortran libgeos-dev && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install -r requirements.txt
