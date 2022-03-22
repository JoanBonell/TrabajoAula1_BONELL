#include "./tigr/tigr.h" 
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

void poner_icono(Tigr *icono, TigrFont *tfont, int x, int y, char text[]){
    //Cargamos el icono.
    Tigr *screen = tigrWindow(320, 200, "GUI", 0);
    tigrBlitAlpha(screen, icono, x, y, 0, 0, icono->w, icono->h, 1.0f);
	//dibuja el texto
    tigrPrint(screen, tfont, x, y, tigrRGB(0x00, 0x00, 0x00), text);
}
