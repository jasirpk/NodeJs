const http = require('http');
const url = require('url');


const server = http.createServer((req, res)=>{
    const rUrl = url.parse(req.url, true).pathname;

    if(rUrl == '/'){
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('Hello, world!');
    }else if(rUrl == '/about'){
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('This is the about page');
    }else if(rUrl == '/contact'){
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end('This is the contact page');
    }
})
server.listen(3000, ()=>{
    console.log('Server is running on http://localhost:3000');
});
