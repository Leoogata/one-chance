global.jogoIniciou = false
global.velocidade = 0


var i = 0
var rrandom = random_range(50, 200)
var chanceVer = irandom_range(0, 3)
var rrandomY = random_range(10, 140)

vel_x = 0;
vel_y = 0;

// Aceleração e atrito
accel = 0.5;   // quão rápido acelera
max_speed = 6; // limite de velocidade
fric = 0.1;    // desaceleração quando não aperta tecla
// Move a camada na horizontal

textoCompleto = "O sistema foi invadido! Entre no firewall, colete todos os escudos sem ser afetado pelos Malwares para restaurar o sistema!\n\n\nAtive 40 escudos em 60 segundos para vencer!\n\n\nSer afetado pelos Malwares 3 vezes causara corrompimento completo!\n\n\n\nPressione Espaco para iniciar a contencao!";
textoMostrado = "";
velocidadeTexto = 4; // menor = mais rápido
contador = 0;



pontos = 0;
vidas = 3;
coef = 0;
prevValue = 0
countSpace = 0

tempo = 0
final = false
necessarioParaGanhar = 40


	
for (var count = 0; count <= 200; count++){
	if (chanceVer == 1) {
		instancia = instance_create_layer(i + rrandom, rrandomY, "Instances", obj_boost)
		instancia.name = 0
	}
	else {
		
		instancia = instance_create_layer(i + rrandom, rrandomY, "Instances", obj_boost_good)
		instancia.name = 1
		i = instancia.x + 50
	}
	

	
	if (count <= 15){
		rrandom = random_range(25, 60)
		chanceVer = irandom_range(0, 5)
	}
	else if (count > 15 && count <= 25){
		rrandom = random_range(20, 50)
		chanceVer = irandom_range(0, 4)
	}
	else if (count > 25 && count <= 40){
		rrandom = random_range(10, 30)
		chanceVer = irandom_range(0, 3)
	} else if (count > 40 && count <= 50){
		rrandom = random_range(5, 30)
		chanceVer = irandom_range(0, 2)
	} else if (count > 50){
		rrandom = random_range(3, 15)
		chanceVer = irandom_range(0, 1)
	}
	
	rrandomY = random_range(10, 140)
	
}// Evento Alarm[0]

if (global.jogoIniciou){
	alarm[0] = room_speed * 60
}



