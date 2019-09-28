FROM docker:stable

# Install AWS CLI
RUN apk update && \
apk -Uuv add python py-pip && \
apk add groff && \
pip install awscli && \
apk --purge -v del py-pip && \
rm /var/cache/apk/*

# Install NodeJS and NPM
RUN apk add --update nodejs npm

