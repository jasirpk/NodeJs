// var http = require('http');

// http.createServer(function (req, res) {
//     res.writeHead(200, { 'Content-Type': 'text/plain' });
//     res.end('Hello from http server');
// }).listen(8080);



// const sayHello = require('./modules');

const hello = require('./modules');
// hello();

console.log(hello.name);
console.log(hello.age);
console.log(hello.city);
hello.greet();
