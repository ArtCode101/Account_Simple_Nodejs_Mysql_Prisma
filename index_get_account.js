const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function main() {
   let account = await prisma.account.findUnique({
    where: {
        id: 1
    }
   })
   console.log(account);
}

main()
  .then(async () => {
    await prisma.$disconnect()
  })
  .catch(async (e) => {
    console.error(e)
    await prisma.$disconnect()
    process.exit(1)
  })