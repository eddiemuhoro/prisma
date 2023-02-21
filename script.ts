import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
    //deleteJob();
    await prisma.job.deleteMany()
  return prisma.job.createMany({
    data:[ {
      title: "title",
      description: "description",
      employerId: 'fb28124d-b779-4f23-b587-c3318f335a30',
      skills: ['HTML', 'CSS', 'JS']
    },
    {
        title: "title2",
        description: "description2",
        employerId: '22f90172-0f43-4fd2-a998-586f2a624dea',
        skills: ['REACT', 'PHP']
        },
        {
            title: "title3",
            description: "Kotlin app that will be used to manage the company's employees",
            employerId: '22f90172-0f43-4fd2-a998-586f2a624dea',
            skills: ['KOTLIN', 'NODEJS']
            },
    ]
  });
}

main()
    .catch((e) => {
        throw e
    })
    .finally(async () => {
        await prisma.$disconnect()
    })


export default prisma