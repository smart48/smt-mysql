ARG MYSQL_VERSION
FROM mysql:latest

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#####################################
# Set Timezone
#####################################

ARG TZ=UTC
ENV TZ UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && chown -R mysql:root /var/lib/mysql/

COPY my.cnf /etc/mysql/conf.d/my.cnf

RUN chmod 0444 /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]

# added exposed port to deployment
# https://stackoverflow.com/a/57565545/460885
# The value of containerPort is a runtime equivalent 
# of EXPOSE to expose a port that was not specified in the image. 
# EXPOSE 3306