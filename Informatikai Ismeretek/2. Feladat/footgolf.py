class Golf:
    def __init__(self,s):
        sor=s.split(";")
        self.nev=sor[0]
        self.kat=sor[1]
        self.csapat=sor[2]
        self.l=[]
        for i in range(3,11):
            self.l.append(int(sor[i]))
        self.osszeg=sum(self,l)
lista=[]
with open("fob2016.txt", "r", encoding="UTF-8") as f:
    for i in f:
        lista.append(Golf(i.strip()))
print(f"3. Feladat: A versenyzők száma: {len(lista)}")
db=0
for i in lista:
    if i.kat=="Noi":
        db+=1
print(f"4. Feladat: Női versenyzők aránya: {db/len(lista)*100:.2f}%")