# -*- coding: utf-8 -*-
import pygame
import serial

ANCHO=400
ALTO=400
BLANCO=(255,255,255)
ROJO=(255,0,0)
VERDE=(0,255,255)
AZUL=(0,0,255)
NEGRO=(0,0,0)

pygame.init()
pantalla=pygame.display.set_mode([ANCHO,ALTO])
pygame.display.set_caption("Generador De Turnos")


if __name__ == '__main__':
	#serial
	pygame.display.set_caption("Generador de turnos")
	s=serial.Serial('/dev/pts/6',9600,rtscts=True,dsrdtr=True,parity=serial.PARITY_ODD,timeout=1,
            stopbits=serial.STOPBITS_TWO,
            bytesize=serial.EIGHTBITS
			)
	turn="n"
	#pygame
	"""variables"""
	letrapeq = pygame.font.SysFont("Arial", 25)
	letramed = pygame.font.SysFont("Arial", 35)
	letragra = pygame.font.SysFont("Arial", 60, True, False)
	turnos=0
	activado = 0
	conteo=0
	fin=False
	while not fin:
		for event in pygame.event.get():
			if event.type == pygame.QUIT:
				fin=True
			elif event.type ==	pygame.KEYUP:
				if event.key == pygame.K_n:
					if activado==0:
						#serial
						x=s.write(turn)
						print ("Envio : -- nuevo turno ")
						#pygame
						activado=1
						turnos+=1
						if turnos==100:
							turnos=1
					else:
						pantalla.blit(letragra.render("Intentelo de nuevo",0,ROJO),(ANCHO/2-25,ALTO-200))
		pantalla.fill(BLANCO)
		pantalla.blit(letragra.render("SOLICITE",0,NEGRO),(90,50))
		pantalla.blit(letragra.render("UN TURNO",0,NEGRO),(80,100))
		pantalla.blit(letragra.render(str(),0,ROJO),(ANCHO/2-25,60))
		pantalla.blit(letramed.render("Presione la tecla",0,ROJO),(ANCHO/2-100,ALTO/3+40))
		pantalla.blit(letramed.render("'n'",0,ROJO),(ANCHO/2-10,ALTO/3+80))
		pantalla.blit(letramed.render("para generar un turno",0,ROJO),(ANCHO/2-135,ALTO/3+120))
		if activado == 1:
			pantalla.blit(letramed.render("Su turno es el numero "+str(turnos),0,ROJO),(ANCHO/2-155,ALTO-90))
			conteo+=1
		if conteo==800 and activado==1:
			conteo=0
			activado=0
		pantalla.blit(letramed.render("Ultimo turno generado:  "+str(turnos),0,AZUL),(ANCHO/2-155,ALTO-50))
		pygame.display.flip()
