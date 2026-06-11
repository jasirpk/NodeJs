
const express = require('express');
const path = require('path');
const app = express();
const port = 4000;

app.use(express.static('public'));

// app.get('/', (req, res)=>{
//     // res.send("This is the home page");
//     res.sendFile(path.join(__dirname , 'index.html'));
// })

// app.get('/product', (req, res)=>{
//     // res.send("This is the product page");
//     res.sendFile(path.join(__dirname , 'product.html'));
// })

// app.get('/about', (req, res)=>{
//     // res.send("This is the about page");
//     res.sendFile(path.join(__dirname , 'about.html'));
// })

// app.get('/contact', (req, res)=>{
//     // res.send("This is the contact page");
//     res.sendFile(path.join(__dirname , 'contact.html'));
// })

app.listen(port, ()=>{
    console.log(`Server is running on http://localhost:${port}`);
})

