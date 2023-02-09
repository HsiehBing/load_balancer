FROM python:3.8-slim

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /app
COPY ./loadertest/* /app/
RUN apt-get install --upgrade -y pip
RUN pip install -r requirements.txt
EXPOSE 80
EXPOSE 8070
EXPOSE 443
ADD start.sh /
RUN chmod +x /start.sh
CMD ["/bin/bash", "-c", "/start.sh"]

