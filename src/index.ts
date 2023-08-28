import 'dotenv/config'
import e from 'express';

const app = e();

app.get('/', (req,res,next) => {
  res.send({
    secret_key1: process.env.SECRET_KEY1,
    secret_key2: process.env.SECRET_KEY2,
    caution: "do not commit or log secret key on your deployment!"
  });
});
app.listen(process.env.LISTEN_PORT ?? 3000);