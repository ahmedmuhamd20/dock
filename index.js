const express = require('express')
const app = express();

const PORT = process.env.PORT || 8000

app.get('/', (req, res) => 
{
    return res.json({ message : "runninghi project"})
})

app.get('/home', (req, res) => 
{
    return res.json({ message : "running home project"})
})

app.listen(PORT, () => console.log(`Server started on PORT:${PORT}`))