
const express = require('express');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(cors({
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE'],
    allowedHeaders: ['Content-Type']
}));
app.use(express.json());

// Allows the server to read form data submitted from HTML forms.
app.use(express.urlencoded({
    extended: true
}));

const personData = [];

app.listen(port, () => {
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


// GET Api

app.get('/api/get_persons', (req, res) => {

    if (personData.length > 0) {
        res.status(200).send({
            'status_code': 200,
            'person': personData,
        })
    } else {
        res.status(404).send({
            'status_code': 404,
            'person': [],
        })
    }
});

// PUT API

app.put('/api/update_person/:id', (req, res) => {

    let id = Number(req.params.id);

    let personTOBEUpdated = personData.find(
        p => p.id === id
    );

    let index = personData.indexOf(personTOBEUpdated);

    personData[index] = {
        ...personTOBEUpdated,
        pname: req.body.name,
        pphone: req.body.phone,
        page: req.body.age
    };

    res.status(200).send({
        status_code: 200,
        message: "Person updated successfully",
        person: personData[index]
    });
});
