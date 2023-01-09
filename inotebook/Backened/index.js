const connectToMongo=require('./db');
const express = require('express')
var cors = require('cors')
connectToMongo();

const app = express()
const port = process.env.PORT || 5000

app.use(cors())
app.use(express.json())
//Available Routes
app.use('/api/auth', require('./routes/auth'))
 app.use('/api/notes',require('./routes/notes'))

 app.set('port', process.env.PORT || 5000);
app.listen(port, () => {
  console.log(`iNotebook listening on port ${port}`)
})
