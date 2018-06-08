FROM maven:3.5.0

# clone the master repo
RUN git clone https://github.com/geoserver/geoserver.git

RUN mvn -f geoserver/src/pom.xml -B -U -T4 -fae -Prelease clean install && mvn -f geoserver/src/community/pom.xml -B -U -T4 -fae -DskipTests -Prelease -PcommunityRelease clean install
