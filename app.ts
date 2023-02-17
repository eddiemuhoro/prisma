import express from 'express';
import dotenv from 'dotenv';
import router from './routes/users';

dotenv.config();

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const port =  3000;

app.use('/users', router);

app.listen(port, ()=>{
    console.log(`Server is running on port ${port}`);
})