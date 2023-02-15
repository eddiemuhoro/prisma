import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

async function main() {
  await prisma.user.deleteMany()
  const users = await prisma.user.createMany({
    data:[{
      name: 'Alice',
      email: 'alice@test.com',
    },
    {
      name: 'Bob',
      email: 'bob@test.com',
    },
    {
      name: 'Charlie',
      email: 'charlie@test.com',
    },
    {
      name: 'Dave',
      email: 'dave@test.com',
    },
  ]
  })
  console.log(users)

}

main()
    .catch(e => {
        throw e
    }
    ) 
    .finally(async () => {
        await prisma.$disconnect()
    }
    )