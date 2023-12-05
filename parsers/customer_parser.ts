import { getCSV } from "../tools/CSVParser";
async function main() {
    const res = await getCSV("./data/customer_data.csv", ";")
    console.log(res)
}

main();
