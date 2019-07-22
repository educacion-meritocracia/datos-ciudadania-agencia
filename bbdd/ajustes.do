********************************************************************************
* Estudio Agencia de la educación 
* José Conejeros
* 19/07
********************************************************************************
*-------------------------------------------------------------------------------
* Ajustes Generales
*-------------------------------------------------------------------------------
clear all						// Limpiar memoria temporal
capture log close				// Cerrar logs
*Definimos Directorio
cd "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd"
version 15
set seed 12345 //Inicio de número aleatorio
*-------------------------------------------------------------------------------
* Merge Bases
*-------------------------------------------------------------------------------
use "alumnosFc_mrun", clear 
list in 1/10

merge 1:1 idalumno using "cuestAlumnos", gen(_alumn)
*No match desde alumnosFc_mrun 1624 observaciones (_alumn==1)
*8589 Match (_alumn==3)
merge 1:1 idalumno using "cuestPadres", gen(_padres)
*No match desde alumnosFc_mrun 3443 observaciones (_padres==1)
*6770 Match (_alumn==3)
edit

clear all
import excel "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd/variables_alumnos_padres.xlsx", sheet("alumnos_padres") firstrow
save "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd/variables_alumnos.dta", replace

*Temas
clear all
import excel "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd/variables_alumnos_padres.xlsx", sheet("temas") firstrow
save "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd/temas.dta", replace

*Etiquetas
clear all
import excel "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd/variables_alumnos_padres.xlsx", sheet("Etiquetas") firstrow
save "/Users/josedanielconejeros/Dropbox/Fondecyt 2019-2021(AsistenteJC)/ciudadania-agencia/bbdd/etiquetas.dta", replace
