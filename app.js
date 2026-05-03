const http = require('http');

const server = http.createServer((req, res) => {
  res.end('Secure DevSecOps App Running');
});

server.listen(3000, () => console.log('Server running'));
