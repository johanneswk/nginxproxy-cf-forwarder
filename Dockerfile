FROM nginx:alpine

ENV env_server_name=server_name
ENV env_proxy_pass=proxy_pass

RUN mkdir /etc/nginx/templates
COPY ./default.conf.template /etc/nginx/templates/default.conf.template

ADD https://developers.cloudflare.com/ssl/static/authenticated_origin_pull_ca.pem /etc/ssl/cloudflare.crt
EXPOSE 80
