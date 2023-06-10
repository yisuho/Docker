FROM node:14

# 컨테이너파일 시스템 내에는 특정 디렉토리가 있다.
# 모든 컨테이너에는 자체 파일 시스템이 있다.
# 작업하고자 하는 특별한 디렉토리를 지니는 거다.
WORKDIR /app

# package.json 파일은 작업 디렉토리에 복사한다. 
COPY package.json .

# 어플리케이션에 필요한 모든 종속성을 설치 한다. 
RUN npm install

# 나머지 코드를 여기에 복사한다. 
COPY . .

# 포트 3000을 외부에 노출한다.
# 컨테이너 내부뿐만 아니라 컨테이너 외부에서 해당 포트에 도달 할 수 있게 한 것이다. 
EXPOSE 3000

#node 명령으로 app.mjs를 실행하는데 FROM node:14 ->노드 환경에서 실행되기에 가능한 것이다. 

CMD [ "node", "app.mjs" ]


