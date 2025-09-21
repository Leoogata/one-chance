global.faseAtual = 1;
global.inimigosMortos = 0;
global.vidas = 3;
global.virusGameIniciou = false




numeroItens = [0, 3, 5, 6, 7, 10]
sprites = [spr_bac1, spr_bac2, spr_bac3, spr_bac4]
spritesBad = [spr_bac1a, spr_bac2a, spr_bac3a, spr_bac4a]
itensNum = 0
instancia = 0
inimigo = 0
numeroIni = 0
todosInimigosCriados = false
viloesNum = 0
alpha = 1
liberarAlpha = false
alarmAtivado = false 

numeroDeViloes = 0
global.mostrar_texto = true;
count_space = 0

if (global.virusGameIniciou){
	alarm[0] = room_speed * 120;
}

textoInicio = "CAUTION!!!!!\n\n\nThere are several infected cells and they are essential to activate the Particle Accelerator!\n\n If you take longer than 3 minutes or eliminate 3 cells in good condition, it will not be possible to start the reactor ever again!\n\nGood Luck! Be careful!\n\n\nPress space to start... "


scr_inicio_telas(textoInicio, 4, 2)


