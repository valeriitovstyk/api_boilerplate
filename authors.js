const express = require('express');
const router = express.Router();
const client = require('./db');

router.get('/:id', (req, res)=>{
    client.query('SELECT * FROM authors WHERE id = $1', [req.params.id], (err,result)=>{
        res.json(result.rows[0])
    })
});

module.exports = router;