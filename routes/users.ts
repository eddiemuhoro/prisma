import express from 'express';

import prisma from '../script';

const router = express.Router();

router.post('/', async (req, res)=>{
    const { name, email } = req.body;
    const user = await prisma.user.create({
        data: {
            name,
            email
        }
    })
    res.json(user);
}
)

router.get('/', async (req, res)=>{
    const users = await prisma.user.findMany();
    res.json(users);
}
)

export default router;
