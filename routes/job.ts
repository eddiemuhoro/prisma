import express from 'express';

import prisma from '../script';

const router = express.Router();

router.post('/', async (req, res)=>{
    const { title, description, employerId } = req.body;
    const job = await prisma.job.create({
        data: {
           title,
            description,
            employerId
        }
    })
    res.json(job);
}
)

// router.delete('/:id', async (req, res)=>{
 
//     const job = await prisma.job.delete({
//         where: {
//             id: parseInt(req.params.id)
//         }
//     })
//     res.json(job);
// }
// )

export default router;