import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    console.log("is it working ??")
    const printers = await prisma.printers.findMany({
      include: {
        MaterialCompatible: {
          include: {
            Material: true
          }
        }
      }
    })
    console.log(printers[0].MaterialCompatible[0].Material.name)
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