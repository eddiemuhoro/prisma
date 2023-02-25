import express from 'express';

import prisma from '../script';

const router = express.Router();

router.post('/', async (req, res)=>{
    const { title, description, employerId, skills } = req.body;
    const job = await prisma.job.create({
        data: {
          title: "Kotlin Developer",
          description: "description",
          employerId: 'fb28124d-b779-4f23-b587-c3318f335a30',
          skills: ['HTML', 'CSS', 'JS']
        },
    })
    res.json(job);
}
)

//get all jobs
router.get('/', async (req, res)=>{
    const jobs = await prisma.job.findMany();
    res.json(jobs);
}
)

//het a job by id
router.get('/employer/:id', async (req, res)=>{
    const job = await prisma.job.findMany({
        where: {
            //id is a string
            employerId: String(req.params.id)
        }
    })
    res.json(job);
}
)

//get a single job from employer using job id
router.get('/:id', async (req, res)=>{
    const job = await prisma.job.findUnique({
        where: {
            id: String(req.params.id)
        }
    })
    res.json(job);
}
)


//update favorite job
router.put('/favorite/:id', async (req, res)=>{
    const job = await prisma.job.update({
        where: {
            id: String(req.params.id)
        },
        //update favorite to true from frontend
        data: {
            isFavorite: true
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