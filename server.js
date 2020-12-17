const app = require("express")();

app.get('/', (req, res) => {
    res.send('Hello Jenkins Example');
});

app.listen('8000');