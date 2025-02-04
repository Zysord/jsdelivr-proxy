# 简单的 jsDelivr 代理服务

一个基于 Node.js 的 jsDelivr CDN 代理服务，支持 npm 包、GitHub 仓库和 WordPress 资源的访问控制。

## 特性

- 支持 npm、GitHub 和 WordPress 资源代理
- 基于白名单的访问控制
- 内置缓存机制
- 可视化管理界面
- Docker 部署支持

## 快速开始

### Docker 部署

```bash
# 克隆仓库
git clone https://github.com/hmsjy2017/jsdelivr-proxy

# 构建并启动容器
docker compose up -d
```

### 手动部署

```bash
# 安装依赖
cd app
npm install

# 启动服务
npm start
```

## 管理面板

访问 `http://[IP]:3000/admin` 进入管理面板：

- 查看服务状态
- 管理白名单
- 配置缓存
- 修改系统设置

默认管理员密钥：`admin`

## 开源协议

MIT