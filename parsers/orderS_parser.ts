import { getCSV } from "../tools/CSVParser";
import { PrismaClient, Order } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
    const res = await getCSV("./data/orderS_data.csv", ";")
    //console.log(res)
    const toAdd: Order[] = []
    for (const elem of res){
      elem[0] = parseInt(elem[0])
      elem[1] = parseDate(elem[1])
      elem[2] = parseDate(elem[2])
      elem[3] = parseInt(elem[3])
      elem[4] = parseInt(elem[4])
      console.log(elem)
      toAdd.push({
          orderid: elem[0],
          customerid: elem[3],
          finalprice: elem[4]
      })
    }

    await prisma.order.createMany({
      data: toAdd
  })
}

function parseDate(input:String) {
  if(input == ""){
    return null
  }

  let parts = input.split('.');

  // new Date(year, month [, day [, hours[, minutes[, seconds[, ms]]]]])
  return new Date(parseInt(parts[2]), parseInt(parts[1])-1, parseInt(parts[0].split(' ')[0])); // Note: months are 0-based
}

main();
