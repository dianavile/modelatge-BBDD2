# modelatge-BBDD2
Exercici Modelatge BBDD

# Installacion
## 1 Vueling
![Vuelingdb](https://github.com/dianavile/modelatge-BBDD2/blob/master/vuelingdb.PNG)
## 2 Botiga
![botigadequadresdb](https://github.com/dianavile/modelatge-BBDD2/blob/master/botigadequadresdb.PNG)
## 3 Stube
![stubedb](https://github.com/dianavile/modelatge-BBDD2/blob/master/3-stubedb.PNG)
## 4 Amazon
![Amazondb](https://github.com/dianavile/modelatge-BBDD2/blob/master/4-Amazondb.PNG)
## 5 Xarxa Social
![XarxaSocialdb](https://github.com/dianavile/modelatge-BBDD2/blob/master/5-XarxaSocialdb.PNG)
## 6 Optica
![Culdampolla_Opticadb](https://github.com/dianavile/modelatge-BBDD2/blob/master/6-Opticadb.PNG)
![Culdampolla_Opticadb](https://github.com/dianavile/modelatge-BBDD2/blob/master/optica-2.PNG)

# FEEDBACK MODELATGE DDBB:
## 1 Vueling
- VUelinig: La relació està bé, però el nom de les taules ha de ser mayúscules inicial i preferiblement en anglès
## 2 Botiga de Quadres
QUADRES:
Hauria de tenir una taula Pictures, i 2 més: Author & Costumer
1.- Posar a la taula quadres el camp autor, no seria el més adient. Autor hauria de tenir les seves dades independents per si en un futur es volen ampliar amb més camps. El que si haura de tenir la taula QUADRES és l’ID de l’autor, SI EXISTEIX. Recorda que pot ser anònim, per tant, la relació pots DESMARCAR MANDATORY, perquè no és obligatori que un quadre tingui un autor. 
2.- La relació quadres/compradors és  1 comprador pot comprar molts quadres, però 1 quadre només el pot comprar 1 comprador (obligatori) 
3.- Price és un double, porta decimals 
4.- A comprador no caldria crear un ID, perquè el DNI ens pot ajudar com a clau única. És opcional, encara que a mi, personalment, sempre m’agrada tenir un id de cada taula.

## 3 Stube
1.- Han d’haver 3 taules: User/Stube/Movies. Stube ha de registrar l’historial de vídeos per usuari. 
2.- Un usuario puede tener muchas listas, y una lista pertenece a 1 usuario. Un vídeo puede pertenecer a muchas listas, y 1 lista puede tener muchos vídeos. 
3.- Si te fijas, en tu esquema faltaría una tabla STUBE (listas) donde se registre una pareja usuario/vídeo. Así podremos consultar todas las listas de vídeos por usuario.

## 4 Amazon
1.- Una solució contempla 5 taules: Usuari/Llibre/Autor/Factura/ItemFactura

## 5 Xarxa Social
1.- La part nova d’aquesta pràctica és la relació RECURSIVA, a on una entitat es relaciona amb ella mateixa. Usuari -> Coneix -> Usuari. Per tant, la taula usuari ha de tenir aquesta relació.

## 6 Optica
Falten totes les relacions
