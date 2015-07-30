
import pyoo
desktop = pyoo.Desktop(pipe='hello')
doc = desktop.create_spreadsheet()

sheet = doc.sheets[0]

str(sheet[0,0].address)
sheet[0,0].value = 1

str(sheet[0,1].address)
sheet[0,1].value = 2

sheet[0,2].formula = '=$A$1+$B$1'
sheet[0,2].value

doc.save('/output/example.xlsx', pyoo.FILTER_EXCEL_2007)
doc.close()

print ("file output/example.xlsx created.")


