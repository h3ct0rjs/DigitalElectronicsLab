#-*-coding: utf-8 -*-
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
pygame.display.set_caption("Modulo A")


if __name__ == '__main__':
	#serial
	#s=serial.Serial('COM5',9600,parity=serial.PARITY_ODD,timeout=1,
    #        stopbits=serial.STOPBITS_TWO,
    #        bytesize=serial.EIGHTBITS
	#		)		Windows.
	s=serial.Serial('/dev/pts/3',9600,rtscts=True,dsrdtr=True,parity=serial.PARITY_ODD,timeout=1,
            stopbits=serial.STOPBITS_TWO,
            bytesize=serial.EIGHTBITS
			)

	turn="s"
	prev="a"
	#pygame
	letrapeq = pygame.font.SysFont("Arial", 25)
	letramed = pygame.font.SysFont("Arial", 35, True)
	letragra = pygame.font.SysFont("Arial", 60, True, False)
	turno=0
	fin=False
	mesa="A"
	activado=0
	conteo=0
	while not fin:
		for event in pygame.event.get():
			if event.type == pygame.QUIT:
				fin=True
			elif event.type ==	pygame.KEYUP:
				if event.key == pygame.K_s:
					if activado==0:
						x=s.write(turn)
						print ("Recibo : -- nuevo turno ")
						activado=1
						turno+=1
				if event.key == pygame.K_a:
					if activado==0:
						x=s.write(prev)

						print ("Recibo : -- nuevo turno ")
						activado=1
						turno-=1
		pantalla.fill(BLANCO)
		pantalla.blit(letragra.render("MODULO "+mesa,0,ROJO),(ANCHO/2-130,40))
		pantalla.blit(letramed.render("Presione la tecla",0,NEGRO),(ANCHO/2-100,ALTO/2-40))
		pantalla.blit(letramed.render("'s'",0,NEGRO),(ANCHO/2-10,ALTO/2))
		pantalla.blit(letramed.render("para cambiar de turno",0,NEGRO),(ANCHO/2-150,ALTO/2+40))
		pantalla.blit(letrapeq.render("Presione 'a' para turno anterior",0,AZUL),(ANCHO/2-130,ALTO/2+100))
		if activado == 1:
			conteo+=1
		if conteo==800 and activado==1:
			conteo=0
			activado=0

		pygame.display.flip()
