const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()

async function main() {
  let accounts = await prisma.account.delete({
    where: {
      id: 1
    }
  })
  console.log(accounts);
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