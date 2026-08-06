FROM python
WORKDIR /home/SOFIA
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]