#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdirtempdir/static

cp sample_app.py tempdir/.
cp -r templates* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY ./static /home/nareth/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/nareth/templates/" >> tempdir/Dockerfile
echo "COPY ./sample_app.py /home/nareth/" >> tempdir/Dockerfile

echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/nareth/sample_app.py" >> tempdir/Dockerfile