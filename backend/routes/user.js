
const express = require('express');
const router = express.Router();

router.get('/', (req, res)=>{
    res.send("All Users");
})

router.post('/', (req, res)=>{
    res.send("All Users");
})
router.put('/', (req, res)=>{
    res.send("All Users");
})
router.delete('/', (req, res)=>{
    res.send("All Users");
})

module.exports = router