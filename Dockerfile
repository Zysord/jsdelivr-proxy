# Dockerfile
FROM node:22-alpine

# 安装基础工具
RUN apk add --no-cache wget

# 创建目录并设置权限
RUN mkdir -p /app && chown -R node:node /app

# 设置工作目录
WORKDIR /app

# 切换到非 root 用户
USER node

# 复制 package 文件
COPY --chown=node:node app/package*.json ./

# 安装依赖
RUN npm ci --only=production

# 复制应用文件
COPY --chown=node:node app/ .

EXPOSE 3000

CMD ["node", "app.js"]
