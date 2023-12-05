import fs from 'fs';
import { parse } from 'csv-parse';

import { dirname } from 'path';
import { fileURLToPath } from 'url';
import { Type } from 'typescript';

const baseFolder = "./data/";


const processFile = async () => {
  const records = [];
  const parser = fs
    .createReadStream(baseFolder + "customer_data.csv")
    .pipe(parse({
        delimiter: ";"
    // CSV options if any
    }));
  for await (const record of parser) {
    // Work with each record
    records.push(record);
  }
  return records;
};

(async () => {
  const records = await processFile();
  console.log(records);
})();