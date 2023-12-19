import { Customer, Material, Order, Printers, PrismaClient, Product } from '@prisma/client'
import { getPrinters } from './getPrintersWithEnoughSpace'
import { PrismaClientKnownRequestError } from '@prisma/client/runtime/library'
import {createInterface} from 'node:readline/promises'
import {stdin, stdout} from 'node:process'

const prisma = new PrismaClient()
const inter = createInterface(stdin, stdout)

// Existing mail : browncarrie@example.net

async function createUser(): Promise<Customer> {
	const email = await inter.question("Enter an email for the user : \n")
	let cust:Customer;
	try {
		cust = await prisma.customer.create({
			data: {
				cityid: 4,
				address: "Impasse du Talent 11",
				email: email,
				fname: "Jaqueline",
				lname: "Broyaère"
			}
		})
	} catch (e) {
		if (e instanceof PrismaClientKnownRequestError) {
			if (e.code === "P2002") {
				console.log("The ", email, " email already exists\n")
				return createUser()
			}
		}
		throw(e)
	}
	console.log("User created !\n");
	return cust
}

async function pickProduct(): Promise<Product> {
	const dispo = await prisma.product.findMany()
	let done = false
	let finalProd:Product = dispo[0]
	while(!done) {
		let toPrint = ""
		for(let i = 0; i < dispo.length;i++) {
			toPrint += i + " : " + dispo[i].name + "\n"
		}
		console.log(toPrint)
		const choice = parseInt(await inter.question("What product do you want ? : \n"))
		if (choice >= 0 && choice < dispo.length) {
			done = true
			finalProd = dispo[choice]
		} else {
			console.log("\n\nPlease choose a correct id\n")
		}
	}
	return finalProd
}

async function pickPrinter(prod: Product, mat: Material): Promise<Printers> {
	const disp = await getPrinters(prisma, prod, mat)
	return disp[0]

}

async function pickMaterial(): Promise<Material> {
	const mats = await prisma.material.findMany()
	let done = false
	let finalMat:Material = mats[0]
	while(!done) {
		let toPrint = ""
		for(let i = 0; i < mats.length;i++) {
			toPrint += i + " : " + mats[i].name + " " + mats[i].color + "\n"
		}
		console.log(toPrint)
		const choice = parseInt(await inter.question("What material do you want ? : \n"))
		if (choice >= 0 && choice < mats.length) {
			done = true
			finalMat = mats[choice]
		} else {
			console.log("\n\nPlease choose a correct id\n")
		}
	}
	return finalMat
}

async function main() {
	const tarace = await createUser()
	const prod = await pickProduct()
	const quantity = parseInt(await inter.question("How many of them would you like ? \n"))
	const material = await pickMaterial()
	const data = {
		customerid: tarace.customerid,
		finalprice: 10,
		statusid: 0
	}
	const order = await prisma.order.create({
		data
	})
	const printer = await pickPrinter(prod, material)
	const orderitem = await prisma.orderItem.create({
		data: {
			printerid: printer.printerid,
			quantity,
			materialid: material.materialid,
			orderid: order.orderid,
			productid: prod.productid
		}
	})
	console.log("Order item has id : ", orderitem.orderid)
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