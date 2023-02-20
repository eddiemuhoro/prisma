import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import routerJob from './routes/job';
import routerEmployee from './auth/employee';
import routerEmployer from './auth/employer';

dotenv.config();

const app = express();

app.use(cors(
    {
        origin: '*',
        methods: ['GET', 'POST', 'PUT', 'DELETE'],
        allowedHeaders: ['Content-Type', 'Authorization']
    }
))

app.use(function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    res.setHeader('Access-Control-Allow-Credentials', 'true');
    next();
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const port =  8000;


app.use('/job', routerJob);
app.use('/employee', routerEmployee);
app.use('/employer', routerEmployer);
app.listen(port, ()=>{
    console.log(`Server is running on port ${port}`);
})