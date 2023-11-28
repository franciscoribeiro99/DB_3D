# 3D printing order

Il s’agit d’une entreprise qui fait des impressions 3D pour ces clients en laissant passer des commandes en ligne.

Il permet d’imprimer en filament (FDM) et/ou résine. Plusieurs types de filament ou de résine sont disponibles en différentes couleurs.

Il faut faire intention car une FDM ne peut pas imprimer avec de la résine. Le prix est calculé en fonction de la taille du fichier donné et du matériau choisi.

- **Customer** {CustomerID, fname, lname, address, zip, city}
- **OrderS** {OrderId, CustomerID, ProductTable, FinalPrice}
- **OrderItems** {OrderId, ProductID, MaterialID, Quantity}
- **Products** {ProductID, name, sizeX, sizeY, sizeZ}
- **Printers** {PrinterID, name, PrintType, printX, printY, printZ}
- **Material** { MaterialID, name, price, color, stock}
- **PrinterMaterialCompatibility** {PrinterID, MaterialID}

<iframe width="560" height="315" src='https://dbdiagram.io/e/655f5db43be149578799ec1f/6565c4953be1495787e1cb65'> </iframe>

### **Règles Métier**

- Compatibilité: Imprimante-Filament/Résine (FDM pour filament, pas pour résine)
- Prix: Calculé selon taille du produit

### **Challenges**
- Les liens entre les produits qui sont liés 

### **Fonctionnalités**

- Calcul du prix: Basé sur dimensions et matériau
- Vérification de compatibilité: Imprimante et matériau
