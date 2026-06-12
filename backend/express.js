
const express = require('express');
const path = require('path');
const app = express();
const port = 4000;

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res)=>{
    // res.download(path.join(__dirname, 'sample.txt'));
    res.sendFile(path.join(__dirname, 'index.html'));

})

app.get('/download', (req, res)=>{
    res.download(path.join(__dirname, 'public/images/my_flutter_avatar.png'))
})

app.listen(port, ()=>{
    console.log(`Server is running on http://localhost:${port}`);
})

