# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"44896.0","system":"readv2"},{"code":"7474.0","system":"readv2"},{"code":"3255.0","system":"readv2"},{"code":"54243.0","system":"readv2"},{"code":"52607.0","system":"readv2"},{"code":"9011.0","system":"readv2"},{"code":"56575.0","system":"readv2"},{"code":"67657.0","system":"readv2"},{"code":"93161.0","system":"readv2"},{"code":"18395.0","system":"readv2"},{"code":"63340.0","system":"readv2"},{"code":"72577.0","system":"readv2"},{"code":"66401.0","system":"readv2"},{"code":"3625.0","system":"readv2"},{"code":"51053.0","system":"readv2"},{"code":"55535.0","system":"readv2"},{"code":"101393.0","system":"readv2"},{"code":"49702.0","system":"readv2"},{"code":"54196.0","system":"readv2"},{"code":"54772.0","system":"readv2"},{"code":"20153.0","system":"readv2"},{"code":"40673.0","system":"readv2"},{"code":"53088.0","system":"readv2"},{"code":"42132.0","system":"readv2"},{"code":"109853.0","system":"readv2"},{"code":"61715.0","system":"readv2"},{"code":"246.0","system":"readv2"},{"code":"23692.0","system":"readv2"},{"code":"51649.0","system":"readv2"},{"code":"34067.0","system":"readv2"},{"code":"40025.0","system":"readv2"},{"code":"19969.0","system":"readv2"},{"code":"43049.0","system":"readv2"},{"code":"71252.0","system":"readv2"},{"code":"37816.0","system":"readv2"},{"code":"59144.0","system":"readv2"},{"code":"4864.0","system":"readv2"},{"code":"51897.0","system":"readv2"},{"code":"38967.0","system":"readv2"},{"code":"72604.0","system":"readv2"},{"code":"63046.0","system":"readv2"},{"code":"73816.0","system":"readv2"},{"code":"28174.0","system":"readv2"},{"code":"Q21","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('congenital-malformations-of-cardiac-septa-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["malformations---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["malformations---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["malformations---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
