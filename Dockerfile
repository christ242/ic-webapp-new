FROM python:3.6-alpine
LABEL maintainer=christ-BAGAMBOULA mail=christ_bagamboula@hotmail.FROM
# Set Workdir
WORKDIR /opt
# Installation Flask with the version
RUN pip install flask==1.1.2
# Configure network for API
EXPOSE 8080 
# Set variables env ODOO_URL and PGADMIN_URL
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://www.pgadmin.org/"
# Copy all files and folders to /opt
COPY . /opt
# Run the server python and start script app.py
ENTRYPOINT [ "python", "app.py" ]
