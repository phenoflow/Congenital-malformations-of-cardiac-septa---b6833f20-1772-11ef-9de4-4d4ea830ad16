# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"92020.0","system":"readv2"},{"code":"5477.0","system":"readv2"},{"code":"107122.0","system":"readv2"},{"code":"73029.0","system":"readv2"},{"code":"42181.0","system":"readv2"},{"code":"12844.0","system":"readv2"},{"code":"108402.0","system":"readv2"},{"code":"99346.0","system":"readv2"},{"code":"19956.0","system":"readv2"},{"code":"99198.0","system":"readv2"},{"code":"65234.0","system":"readv2"},{"code":"65401.0","system":"readv2"},{"code":"16538.0","system":"readv2"},{"code":"88842.0","system":"readv2"},{"code":"98273.0","system":"readv2"},{"code":"93719.0","system":"readv2"},{"code":"70857.0","system":"readv2"},{"code":"94023.0","system":"readv2"},{"code":"88479.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('congenital-malformations-of-cardiac-septa-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["congenital-malformations-of-cardiac-septa-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["congenital-malformations-of-cardiac-septa-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["congenital-malformations-of-cardiac-septa-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
