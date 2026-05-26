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


var cl = require('cli-color');

console.log(cl.red('This is red text'));
console.log(cl.green('This is green text'));
console.log(cl.blue.underline('This is blue text'));

var uc = require('upper-case');

console.log(uc.upperCase('hello world'));
console.log(uc.upperCase('jasir'));

// Gloabal objects

// console.clear();
console.log(__filename);
console.log(__dirname);

// setInterval(function(){
//   console.log('Hello every 2 seconds');
// }, 2000);

setTimeout(function(){
    console.log('Hello after 3 seconds');
}, 3000);j