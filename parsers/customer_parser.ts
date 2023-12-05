import { getCSV } from "../tools/CSVParser";

import { PrismaClient, Customer } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    const res = await getCSV("./data/customer_data.csv", ";")
    const data:any[] = []
    for(const t of res) {
        const id = parseInt(t[0])
        const fname = t[1]
        const lname = t[2]
        const mail = t[3]
        const address = t[4]
        const zip = t[5]
        const city = t[6]
        data.push({
            fname,
            lname,
            email: mail,
            address,
            zip,
            city
        })
    }
    await prisma.customer.createMany({
        data: data
    })
    console.log(res)
}

main();
