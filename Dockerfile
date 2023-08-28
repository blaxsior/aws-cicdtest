FROM node:alpine as builder

WORKDIR /home/node

# 설정 파일 복사
COPY ./package*.json .
COPY ./tsconfig.json .

# typescript 같은 것 설치해야 함
RUN npm install
# 나머지 파일들 복사하기
COPY . .
# 빌드
RUN npm run build
# 필요 없는 폴더 삭제
RUN rm -r ./src 

CMD ["npm", "start"]