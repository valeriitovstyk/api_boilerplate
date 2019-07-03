const express = require('express');
const app = express();

const bodyParser = express.urlencoded({extended:true});
app.use(bodyParser);

const authors = require('./authors');
app.use('/authors', authors);

app.use((req, res, next) => {
    res.send('Not Found!');
});

const listener = app.listen(3000, () =>
    console.log(`application runs at ${listener.address().port} enjoy :)`)
);

