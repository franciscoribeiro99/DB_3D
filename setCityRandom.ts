import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

// This methods set random cities for customers
async function main() {
    const customers = await prisma.customer.findMany();
    for (const c of customers) {
        await prisma.customer.update({
            where: {
                customerid: c.customerid
            },
            data: {
                cityid: {
                    set: Math.round(Math.random() * 44)
                }
            }
        })
    }
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