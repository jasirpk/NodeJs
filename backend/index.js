
const express = require('express');

const app = express();
const port = 3000;

// Allows the server to accept JSON data from requests.
app.use(express.json());

// Allows the server to read form data submitted from HTML forms.
app.use(express.urlencoded({
    extended: true
}));

const personData = [];

app.listen(port, ()=>{
    console.log(`Server is running on http://localhost:${port}`);
})

// POST API

app.post('/api/add_person', (req, res) => {
    console.log("Received Data:", req.body);

    const pdata = {
        "id": personData.length + 1,
        "pname": req.body.name,
        "pphone": req.body.phone,
        "page": req.body.age
    };

    personData.push(pdata);

    console.log("Final Result:", personData);

    res.status(200).json({
        Status_Code: 200,
        Message: "Person added successfully",
        Person: pdata
    });
});