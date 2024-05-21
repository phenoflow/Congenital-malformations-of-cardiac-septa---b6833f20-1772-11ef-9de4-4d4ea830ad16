# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"P550.12","system":"readv2"},{"code":"P541.00","system":"readv2"},{"code":"P54z.00","system":"readv2"},{"code":"P5y..00","system":"readv2"},{"code":"P54y.00","system":"readv2"},{"code":"P544.00","system":"readv2"},{"code":"24M..00","system":"readv2"},{"code":"P55y.11","system":"readv2"},{"code":"P54..00","system":"readv2"},{"code":"P5z..00","system":"readv2"},{"code":"P550.13","system":"readv2"},{"code":"P550.11","system":"readv2"},{"code":"P540.00","system":"readv2"},{"code":"P550.00","system":"readv2"},{"code":"K13.9","system":"readv2"},{"code":"K13.2","system":"readv2"},{"code":"K11.8","system":"readv2"},{"code":"K10.8","system":"readv2"},{"code":"K11","system":"readv2"},{"code":"K09.9","system":"readv2"},{"code":"K13.8","system":"readv2"},{"code":"K12.8","system":"readv2"},{"code":"K13.4","system":"readv2"},{"code":"K12","system":"readv2"},{"code":"K10","system":"readv2"},{"code":"K09.8","system":"readv2"},{"code":"K12.9","system":"readv2"},{"code":"K11.9","system":"readv2"},{"code":"K09","system":"readv2"},{"code":"K10.9","system":"readv2"},{"code":"K13","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('congenital-malformations-of-cardiac-septa-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["congenital-malformations-of-cardiac-septa-defects---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["congenital-malformations-of-cardiac-septa-defects---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["congenital-malformations-of-cardiac-septa-defects---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
