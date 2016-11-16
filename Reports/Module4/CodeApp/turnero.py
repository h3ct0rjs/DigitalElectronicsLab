import pygame
import serial

ANCHO=500
ALTO=400
BLANCO=(255,255,255)
ROJO=(255,0,0)
VERDE=(0,255,255)
AZUL=(0,0,255)
NEGRO=(0,0,0)

pygame.init()
pantalla=pygame.display.set_mode([ANCHO,ALTO])
pygame.display.set_caption("Turnero")


if __name__ == '__main__':
	#serial
	serverToGenerator=serial.Serial(
			port='COM1',
			baudrate=9600,
            timeout=1,
            parity=serial.PARITY_ODD,
            stopbits=serial.STOPBITS_TWO,
            bytesize=serial.EIGHTBITS
			)
	serverToBoxA=serial.Serial(
			port='COM2',
			baudrate=9600,
            timeout=1,
            parity=serial.PARITY_ODD,
            stopbits=serial.STOPBITS_TWO,
            bytesize=serial.EIGHTBITS
			)
	serverToBoxB=serial.Serial(
			port='COM3',
			baudrate=9600,
            timeout=1,
            parity=serial.PARITY_ODD,
            stopbits=serial.STOPBITS_TWO,
            bytesize=serial.EIGHTBITS
			)
	turn="n"
	get="s"
	prev="a"
	"""variables"""
	letrapeq = pygame.font.SysFont("Arial", 25)
	letramed = pygame.font.SysFont("Arial", 35, True)
	letragra = pygame.font.SysFont("Arial", 250, True, False)
	displayturnos=0
	modulo=0
	turnos=0
	fin=False
	modulo=""
	reachtop=0
	start=0
	print "Turno en atencion= ", displayturnos
	print "Turnos disponibles= ", turnos
	while not fin:
		for event in pygame.event.get():
			if event.type == pygame.QUIT:
				fin=True
		#serial
		rec=serverToGenerator.read(1);
		sendA=serverToBoxA.read(1);
		sendB=serverToBoxB.read(1);
		if rec==turn:
			print "Recibio : --- un nuevo turno --- correctamente"
			turnos+=1
			print "turnos pendientes = ",turnos
		else:
			if sendA==get:
				if turnos!=0:
					modulo="A"
					print "Enviado : --- atendiendo nuevo turno -- correctamente"
					turnos-=1
					displayturnos+=1
					print "Turno en atencion= ",displayturnos
					print "turnos pendientes = ",turnos
					start=1
				else:
					print "Enviado : --- No hay turnos disponibles por atender --"
			else:
					if sendB==get:
						if turnos!=0:
							modulo="B"
							print "Enviado : --- atendiendo nuevo turno -- correctamente"
							turnos-=1
							displayturnos+=1
							print "Turno en atencion= ",displayturnos
							print "turnos pendientes = ",turnos
							start=1
						else:
							print "Enviado : --- No hay turnos disponibles por atender --"
					else:
						if sendA==prev:
							if start==1:
								modulo="A"
								print "Enviado : --- atendiendo nuevo turno -- correctamente"
								if displayturnos!=0:
									turnos+=1
									displayturnos-=1
								if displayturnos==0 and reachtop==1:
									displayturnos=99
								print "Turno en atencion= ",displayturnos
								print "turnos pendientes = ",turnos
							else:
								print "Enviado : --- No hay turnos disponibles por atender --"
						else:
								if sendB==prev:
									if start==1:
										modulo="B"
										print "Enviado : --- atendiendo nuevo turno -- correctamente"
										if displayturnos!=0:
											turnos+=1
											displayturnos-=1
										if displayturnos==0 and reachtop==1:
											displayturnos=99
										print "Turno en atencion= ",displayturnos
										print "turnos pendientes = ",turnos
									else:
										print "Enviado : --- No hay turnos disponibles por atender --"
		if displayturnos==100:
			displayturnos=1
		if turnos==100:
			reachtop=1
			turnos=1

			
		#pygame
		pantalla.fill(BLANCO)
		pantalla.blit(letramed.render("TURNO",0,NEGRO),(ANCHO/2-60,20))
		pantalla.blit(letragra.render(str(displayturnos),0,ROJO),(ANCHO/2-65,50))
		pantalla.blit(letramed.render("MODULO : "+modulo,0,NEGRO),(ANCHO/2-100,ALTO/2+130))
		pygame.display.flip()		


