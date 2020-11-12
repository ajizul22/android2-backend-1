require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = process.env.PORT
const projectRouter = require('./src/routers/projects')

// Middleware
app.use(bodyParser.urlencoded({ extended: false }))
app.use('/project', projectRouter)

app.get('/', (_request, response) => {
  response.send('Backend by Android2!')
})

app.listen(port, () => {
  console.log(`Listen app backend on port ${port}`)
})
