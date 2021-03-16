const http = require('http');
const port = process.env.PORT || 3000;
const app_env = process.env.APP_ENV || "unknow";
const app_version = process.env.APP_VERSION || "unknow";
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = `MTFK Hello World! Application Version ${app_version}- Environment ${app_env}\n`
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
