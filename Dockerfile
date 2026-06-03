FROM nginx:alpine
COPY . /usr/share/nginx/html/
RUN printf 'server {\n\
    listen 80;\n\
    root /usr/share/nginx/html;\n\
    index index.html;\n\
    location ~ /\\.(git|github|gitignore|env) {\n\
        return 404;\n\
    }\n\
}\n' > /etc/nginx/conf.d/default.conf
