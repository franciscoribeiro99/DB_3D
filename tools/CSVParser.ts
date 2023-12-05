import fs from 'fs';
import { parse } from 'csv-parse';

export async function getCSV(filename: string, delimiter:string = ","): Promise<Array<Array<any>>> {
    return new Promise(async (resolve, reject) => {
        const records = [];
        const parser = fs.createReadStream(filename).pipe(parse({
            delimiter: delimiter
            // CSV options if any
        }));
        for await (const record of parser) {
            // Work with each record
            records.push(record);
        }
        resolve(records);
    });
}