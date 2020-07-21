const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send('Ok funcionou supimpa!')
})

app.listen(3000, () => console.log('Servidor TOP rodando na porta 3000!'))
