require('dotenv').config()
const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const morgan = require('morgan')
const cors = require('cors')

const port = process.env.PORT

const projectRouter = require('./src/routers/projects')
const userRouter = require('./src/routers/user')

// Middleware
app.use(bodyParser.urlencoded({ extended: false }))
app.use(morgan('dev'))
app.use(cors())

// Config CORS
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*')
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  )
  next()
})

app.use('/project', projectRouter)
app.use('/user', userRouter)

app.get('/', (_request, response) => {
  response.send('Backend by Android2!')
})

app.listen(port, () => {
  console.log(`Listen app backend on port ${port}`)
})
