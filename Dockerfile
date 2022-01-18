FROM php:8.0-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install cron -y -f

# Setting up a cronjob
COPY test_cronjob /etc/cron.d/test_cronjob
RUN chmod 0644 /etc/cron.d/test_cronjob
RUN crontab /etc/cron.d/test_cronjob
RUN touch /var/log/cron.log
CMD cron && tail -f /var/log/cron.log