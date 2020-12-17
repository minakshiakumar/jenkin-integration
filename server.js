const app = require("express")();

app.get('/', (req, res) => {
    res.send('Hello Jenkin Example');
});

app.listen('8000');