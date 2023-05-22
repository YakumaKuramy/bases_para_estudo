extends Control

#existem muitas formas de fazer uma mesma coisa, 
#a que usei nesse caso foi usando o modelo mais comnum, acredito eu 
#criei alguns butões dentro da arvore base, um button e um texture button
func _ready():
	#aqui apenas iterei dentro de um for usando como base um lista de objetos qe estejam dentro
	#do grupo buttons
	for button in get_tree().get_nodes_in_group("buttons"):
		#para cada buttons dentro desse grupo conectamos nele mesmo a função
		button.pressed.connect(self._button_pressed)
		#nesse caso, o codigo esta limpo mais não roda, se vc executar vera que ele da um pequeno 
		#erro
		#todas as formas feitas aqui em baixo e comentadas foram formas que tentei e que não 
		#deram certo
		
		#button.pressed.connect(Callable(button,"_on_buttons_pressed"))
		#button.connect("pressed", Callable(button,"_on_buttons_pressed"))
		#$button_1.connect("pressed",Callable($button_1._on_button_pressed))
		pass

#aqui apenas printamos algo pra saber que ele esta funcionando 
#essa solição não funciona para mim, pois no meu problema eu tenho uam lista de pelo menos 
#5 botões 
func _button_pressed() -> void:
	print("Hello world!")

#aqui como teste, deixo mais claro qual tipo de objeto quero trabalhar, assim como 
#que quero pegar o objeto pelo nome e apartir disso fazer algo
func _on_button_pressed(button: Button) -> void:
	match button.name:
		"button_1":
			print("Ola Mundo!")
		"button_2":
			print("Finalmente")
