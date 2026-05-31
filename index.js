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

// setTimeout(function(){
//     console.log('Hello after 3 seconds');
// }, 3000);


/// OS module provides operating system-related utility methods and properties. It can be used to get information about the current operating system, such as its type, platform, architecture, memory usage, uptime, hostname, user info, network interfaces, CPU info, endianness, and home directory.
// var os = require('os');
// console.log('Operating System: ' + os.type());
// console.log('Platform: ' + os.platform());
// console.log('CPU Architecture: ' + os.arch());
// console.log('Total Memory: ' + os.totalmem());
// console.log('Free Memory: ' + os.freemem());
// console.log('Uptime: ' + os.uptime() + ' seconds');
// console.log('Hostname: ' + os.hostname());
// console.log('User Info: ', os.userInfo());
// console.log('Network Interfaces: ', os.networkInterfaces());
// console.log('CPU Info: ', os.cpus());
// console.log('Endianness: ' + os.endianness());
// console.log('Home Directory: ' + os.homedir());


var fs = require('fs');

// Read files

fs.readFile('example.txt', 'utf8',function(err, data){
    if(err){
        console.error('Error reading file:', err);  
    }
    console.log('File content:',data);
})

// Create a file

fs.writeFile('newfile.txt', 'This is a new file created using Node.js', function(err){
    if(err){
        console.error('Error writing file:', err);
    }
    console.log('File created successfully');
}) 

// uppending data to a file

fs.appendFile('newfile.txt', '\nThis is additional content appended to the file.', function(err){
    if(err){
        console.error('Error appending to file:', err);
    }
    console.log('content appended successfully');
})

// Rename a file

fs.rename('newfile.txt', 'renamedfile.txt', function(err){
    if(err){
        console.error('Error renaming file:', err);
    }
    console.log('File renamed successfully');
})

// Delete a file

fs.unlink('renamedfile.txt', function(err){
    if(err){
        console.error('Error deleting file:', err);
    }
    console.log('File deleted successfully');
})