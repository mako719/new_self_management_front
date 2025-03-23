# ③ Node.js を含むイメージを使う（Nuxt 用）
FROM node:18 AS frontend

# ④ client 用の設定
WORKDIR /app/client

# パッケージ情報をコピー & インストール
COPY client/package.json client/package-lock.json ./
RUN npm install

# ソースコードをコピー
COPY ./client /app/client

# Nuxt のビルド
RUN npm run build

# ⑤ 本番用の環境で実行
CMD ["npm", "run", "start"]

# 3001番ポートを公開
EXPOSE 3001
