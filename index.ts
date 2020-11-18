import * as Express from 'express';

const app = Express();

app.get('/', function (req, res) {
  res.send('Hello from Docker')
})
 
app.listen(3000, () => console.log('Application running on port 3000'));
