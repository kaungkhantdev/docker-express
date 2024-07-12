const express = require('express');

const app = express();
app.use(express.json());
app.get('/', (req, res) => {
    return res.json('HELLO I AM EXPRESS DOCKER.')
})


app.listen(3000, () => {
    console.log('APP is running at http:localhost:3000')
})