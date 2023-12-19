import { PrismaClient, Product, Printers, Material  } from "@prisma/client";


export async function getPrinters(prisma:PrismaClient, product: Product, mat: Material): Promise<Array<Printers>> {
    return prisma.printers.findMany({
        include: {
            materialcompatible: {
                include: {
                    material: true
                }
            }
        },
        where: {
            printx: {
                gte: product.sizex
            },
            AND: {
                printy: {
                    gte: product.sizey
                },
                AND:  {
                    printz: {
                        gte: product.sizez
                    },
                    AND: {
                        materialcompatible: {
                            some: {
                                materialid: {
                                    equals: mat.materialid
                                }
                            }
                        }
                    }
                }
            }
        }
    })
}