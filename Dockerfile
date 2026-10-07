# Tomcat 9 + Java 8 이미지를 베이스로 사용 (EC2에 JDK/Tomcat 설치할 필요가 없어지는 이유)
FROM tomcat:9.0-jdk8

# 빌드된 war를 ROOT.war로 복사 -> 접속 주소가 /hello 가 아니라 / 가 됨 (지금 EC2 방식과 동일)
COPY target/hello-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

# 컨테이너 내부에서 Tomcat이 쓰는 포트 (문서용 표시)
EXPOSE 8080