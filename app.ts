// const express = require('express');
// const dotenv = require('dotenv');
// const cors = require('cors');
// const routerJob = require('./routes/job');
// const routerEmployee = require('./auth/employee');
// const routerEmployer = require('./auth/employer');
// const routerBid = require('./routes/Application');
// const routerMessage = require('./routes/message');
import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import routerJob from './routes/job';
import routerEmployee from './auth/employee';
import routerEmployer from './auth/employer';
import routerBid from './routes/Application';
import routerMessage from './routes/message';

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

const port =  process.env.PGPORT;


app.use('/job', routerJob);
app.use('/employee', routerEmployee);
app.use('/employer', routerEmployer);
app.use('/bid', routerBid);
app.use('/message', routerMessage);
app.listen(port, ()=>{
    console.log(`Server is running on port ${port}`);
})