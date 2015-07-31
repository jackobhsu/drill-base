FROM jackob/jackob-base 

MAINTAINER jackob hsu

RUN mkdir -p /opt/drill && mkdir -p /opt/drill/log

RUN wget -q -O - http://getdrill.org/drill/download/apache-drill-1.1.0.tar.gz | tar -xzf - --strip=1 -C /opt/drill

ADD start-drill.sh /opt/drill/bin/start-drill.sh

ADD conf/drill-env.sh /opt/drill/conf/drill-env.sh

ADD conf/drill-override.conf /opt/drill/conf/drill-override.conf

ADD conf/setEnv.sh /etc/profile.d/setEnv.sh

#ENV JAVA_HOME /opt/java 

#ENV PATH /opt/java/bin:$PATH

EXPOSE 22 2181 8047 31010 31011 31012 46655 

CMD /opt/drill/bin/start-drill.sh  && tail -f /opt/drill/log/drillbit.out


