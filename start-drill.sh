#sed -r -i "s/(zk.connect):(.*)/\1: \"$ZK\"/g" /opt/drill/conf/drill-override.conf
#sed -r -i "s/(cluster-id):(.*)/\1: \"$CLUSTER_ID\"/g" /opt/drill/conf/drill-override.conf

#/opt/drill/bin/drillbit.sh --config /opt/drill/conf/ start
export JAVA_HOME=/opt/java
export PATH=$JAVA_HOME/bin:$PATH
/usr/sbin/sshd -D &
#/opt/drill/bin/drill-embedded
#/opt/drill/bin/drillbit.sh --config /opt/drill/conf/drill-override.conf start
/opt/drill/bin/drillbit.sh --config /opt/drill/conf/ start
