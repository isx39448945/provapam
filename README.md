# provapam
## ASIX M06-ASO @isx39448945 Curs 2019-2020

docker hub: https://hub.docker.com/repository/docker/adrinarvaez/provapam
github: https://github.com/isx39448945/provapam

Execució de l'exercici: 
+ docker run --rm --name provapam -h provapam -it adrinarvaez/hostpam19:aware /bin/bash
+ python pamaware.py
+ su - adri (password adri) | anna (password anna)
+ chfn


### Procés de creació d'una aplicació PAM aware i d'un módul PAM

Elaborem els fitxers que automatitzaran la tasca de crear el nostre container amb totes les utilitats necessàries. 

Al Dockerfile afegim la instal·lació del programari python per poder executar els programes dins del container.

Al install.sh afegim les línies de creació dels usuaris anna i adri per poder fer les verificacions i les copies de: login.defs (permetre fer chfn), chfn (amb les regles PAM de l'exercici) i el pam_python.so a les seves rutes corresponents.

Per poder obtenir el mòdul pam_python.so localment per afegir-lo a la nostra imatge hem hagut de seguir uns pasos en concret (veure pàgines 43 i 44 del fitxer HowTo-ASIX_PAM.pdf)

Creem el programa pamaware.py que en executar-se verificarà que qui l'executa sigui un usuari unix vàlid.

Creem el mòdul pam pam_mates.py que farà una pregunta matemàtica que caldrà resoldre per poder superar l'autenticació.
