local composer = require( "composer" )
 
local scene = composer.newScene()

local widget = require( "widget" )

display.setStatusBar(display.HiddenStatusBar)
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------












 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
	
	 local bandera=0
	
	local function scrollListener (event)
		local phase = event.phase
		local direction = event.direction
		if event.limitReached then
			if "up" == direction then
				print("Llego al límite de ariba")
			elseif "down" == direction then
				print ("Llego al límite de abajo")
			end
		end
		return true
	end
	
	local encabezado_pilares = display.newImageRect("imagenes/pilares/encabezado_pilares.png",320,100)
	encabezado_pilares.x = display.contentWidth/2
	encabezado_pilares.y = display.contentHeight/2-235
	
	sceneGroup:insert(encabezado_pilares)
	
		local btnAprende = display.newImageRect("imagenes/pilares/aprende_pilares.png",110,40)
	btnAprende.x = display.contentWidth/2+90
	btnAprende.y = display.contentHeight/2-240
	
	sceneGroup:insert(btnAprende)
	

	
	local btnmenu = display.newImageRect("imagenes/pilares/btnmenu.png",77,23)
	btnmenu.x = display.contentWidth/2-110
	btnmenu.y = display.contentHeight/2-240
	
	sceneGroup:insert(btnmenu)
	
	
	local scrollView = widget.newScrollView
	{
		left=0,
		top=40,
	
		width= display.contentWidth,
		height= display.contentHeight, 
		topPadding = 20,
		bottomPadding=20,
		horizontalScrollDisabled=true,
		verticalScrollDisabled=false,
		listener=scrollListener,
		backgroundColor={157/255,157/255,156/255},
	}
	
	
	

	
	
	local pilar1_a_on = display.newImageRect("imagenes/pilares/pilar1_a_on.jpg",100,90)
pilar1_a_on.x = display.contentWidth/2-110
pilar1_a_on.y = display.contentHeight/2-215

scrollView:insert(pilar1_a_on)

pilar1_a_on :addEventListener("touch",pilar1_a_on )

local pilar1_b_on = display.newImageRect("imagenes/pilares/pilar1_b_on.jpg",220,90)
pilar1_b_on.x = display.contentWidth/2+50
pilar1_b_on.y = display.contentHeight/2-215

scrollView:insert(pilar1_b_on)

local pilar1_a_off = display.newImageRect("imagenes/pilares/pilar1_a_off.jpg",100,90)
pilar1_a_off.x = display.contentWidth/2-110
pilar1_a_off.y = display.contentHeight/2-215	

pilar1_a_off.isVisible=false	

scrollView:insert(pilar1_a_off)
	
local p1_d1 = display.newImageRect("imagenes/pilares/p1_d1.png",330,50)
p1_d1.x = display.contentWidth/2+4
p1_d1.y = display.contentHeight/2-145
scrollView:insert(p1_d1)

p1_d1.isVisible=false

local p1_d2 = display.newImageRect("imagenes/pilares/p1_d2.png",330,50)
p1_d2.x = display.contentWidth/2+4
p1_d2.y = display.contentHeight/2-95
scrollView:insert(p1_d2)

p1_d2.isVisible=false

local p1_d3 = display.newImageRect("imagenes/pilares/p1_d3.png",330,50)
p1_d3.x = display.contentWidth/2+4
p1_d3.y = display.contentHeight/2-45
scrollView:insert(p1_d3)	
	
p1_d3.isVisible=false

local pilar2_a_on = display.newImageRect("imagenes/pilares/pilar2_a_on.jpg",100,90)
pilar2_a_on.x = display.contentWidth/2-110
pilar2_a_on.y = display.contentHeight/2-125

scrollView:insert(pilar2_a_on)

local pilar2_b_on = display.newImageRect("imagenes/pilares/pilar2_b_on.jpg",220,90)
pilar2_b_on.x = display.contentWidth/2+50
pilar2_b_on.y = display.contentHeight/2-125

scrollView:insert(pilar2_b_on)

local pilar2_a_off = display.newImageRect("imagenes/pilares/pilar2_a_off.jpg",100,90)
pilar2_a_off.x = display.contentWidth/2-110
pilar2_a_off.y = display.contentHeight/2-125

scrollView:insert(pilar2_a_off)
pilar2_a_off.isVisible=false

local p2_d1 = display.newImageRect("imagenes/pilares/p2_d1.png",330,50)
p2_d1.x = display.contentWidth/2+4
p2_d1.y = display.contentHeight/2-55
scrollView:insert(p2_d1)

p2_d1.isVisible=false

local p2_d2 = display.newImageRect("imagenes/pilares/p2_d2.png",330,50)
p2_d2.x = display.contentWidth/2+4
p2_d2.y = display.contentHeight/2-5
scrollView:insert(p2_d2)

p2_d2.isVisible=false

local p2_d3 = display.newImageRect("imagenes/pilares/p2_d3.png",330,50)
p2_d3.x = display.contentWidth/2+4
p2_d3.y = display.contentHeight/2+45
scrollView:insert(p2_d3)

p2_d3.isVisible=false

local p2_d4 = display.newImageRect("imagenes/pilares/p2_d4.png",330,50)
p2_d4.x = display.contentWidth/2+4
p2_d4.y = display.contentHeight/2+95
scrollView:insert(p2_d4)

p2_d4.isVisible=false

local p2_d5 = display.newImageRect("imagenes/pilares/p2_d5.png",330,50)
p2_d5.x = display.contentWidth/2+4
p2_d5.y = display.contentHeight/2+145
scrollView:insert(p2_d5)

p2_d5.isVisible=false

local p2_d6 = display.newImageRect("imagenes/pilares/p2_d6.png",330,50)
p2_d6.x = display.contentWidth/2+4
p2_d6.y = display.contentHeight/2+195
scrollView:insert(p2_d6)

p2_d6.isVisible=false

local p2_d7 = display.newImageRect("imagenes/pilares/p2_d7.png",330,50)
p2_d7.x = display.contentWidth/2+4
p2_d7.y = display.contentHeight/2+245
scrollView:insert(p2_d7)

p2_d7.isVisible=false

local p2_d8 = display.newImageRect("imagenes/pilares/p2_d8.png",330,50)
p2_d8.x = display.contentWidth/2+4
p2_d8.y = display.contentHeight/2+295
scrollView:insert(p2_d8)

p2_d8.isVisible=false

local p2_d9 = display.newImageRect("imagenes/pilares/p2_d9.png",330,50)
p2_d9.x = display.contentWidth/2+4
p2_d9.y = display.contentHeight/2+345
scrollView:insert(p2_d9)

p2_d9.isVisible=false

local p2_d10 = display.newImageRect("imagenes/pilares/p2_d10.png",330,50)
p2_d10.x = display.contentWidth/2+4
p2_d10.y = display.contentHeight/2+395
scrollView:insert(p2_d10)

p2_d10.isVisible=false

local p2_d11 = display.newImageRect("imagenes/pilares/p2_d11.png",330,50)
p2_d11.x = display.contentWidth/2+4
p2_d11.y = display.contentHeight/2+445
scrollView:insert(p2_d11)

p2_d11.isVisible=false


local pilar3_a_on = display.newImageRect("imagenes/pilares/pilar3_a_on.jpg",100,90)
pilar3_a_on.x = display.contentWidth/2-110
pilar3_a_on.y = display.contentHeight/2-35

scrollView:insert(pilar3_a_on)

local pilar3_b_on = display.newImageRect("imagenes/pilares/pilar3_b_on.jpg",220,90)
pilar3_b_on.x = display.contentWidth/2+50
pilar3_b_on.y = display.contentHeight/2-35
scrollView:insert(pilar3_b_on)

local pilar3_a_off = display.newImageRect("imagenes/pilares/pilar3_a_off.jpg",100,90)
pilar3_a_off.x = display.contentWidth/2-110
pilar3_a_off.y = display.contentHeight/2-35

scrollView:insert(pilar3_a_off)

pilar3_a_off.isVisible=false



local p3_d1 = display.newImageRect("imagenes/pilares/p3_d1.png",330,50)
p3_d1.x = display.contentWidth/2+4
p3_d1.y = display.contentHeight/2+35
scrollView:insert(p3_d1)

p3_d1.isVisible=false

local p3_d2 = display.newImageRect("imagenes/pilares/p3_d2.png",330,50)
p3_d2.x = display.contentWidth/2+4
p3_d2.y = display.contentHeight/2+85
scrollView:insert(p3_d2)

p3_d2.isVisible=false

local p3_d3 = display.newImageRect("imagenes/pilares/p3_d3.png",330,50)
p3_d3.x = display.contentWidth/2+4
p3_d3.y = display.contentHeight/2+135
scrollView:insert(p3_d3)

p3_d3.isVisible=false

local pilar4_a_on = display.newImageRect("imagenes/pilares/pilar4_a_on.jpg",100,90)
pilar4_a_on.x = display.contentWidth/2-110
pilar4_a_on.y = display.contentHeight/2+55

scrollView:insert(pilar4_a_on)

local pilar4_b_on = display.newImageRect("imagenes/pilares/pilar4_b_on.jpg",220,90)
pilar4_b_on.x = display.contentWidth/2+50
pilar4_b_on.y = display.contentHeight/2+55

scrollView:insert(pilar4_b_on)

local pilar4_a_off = display.newImageRect("imagenes/pilares/pilar4_a_off.jpg",100,90)
pilar4_a_off.x = display.contentWidth/2-110
pilar4_a_off.y = display.contentHeight/2+55

scrollView:insert(pilar4_a_off)

pilar4_a_off.isVisible=false

local p4_d1 = display.newImageRect("imagenes/pilares/p4_d1.png",330,50)
p4_d1.x = display.contentWidth/2+4
p4_d1.y = display.contentHeight/2+125
scrollView:insert(p4_d1)

local p4_d2 = display.newImageRect("imagenes/pilares/p4_d2.png",330,50)
p4_d2.x = display.contentWidth/2+4
p4_d2.y = display.contentHeight/2+175
scrollView:insert(p4_d2)

local p4_d3 = display.newImageRect("imagenes/pilares/p4_d3.png",330,50)
p4_d3.x = display.contentWidth/2+4
p4_d3.y = display.contentHeight/2+225
scrollView:insert(p4_d3)

local p4_d4 = display.newImageRect("imagenes/pilares/p4_d4.png",330,50)
p4_d4.x = display.contentWidth/2+4
p4_d4.y = display.contentHeight/2+275
scrollView:insert(p4_d4)

p4_d1.isVisible=false;	
p4_d2.isVisible=false;	
p4_d3.isVisible=false;	
p4_d4.isVisible=false;

local pilar5_a_on = display.newImageRect("imagenes/pilares/pilar5_a_on.jpg",100,90)
pilar5_a_on.x = display.contentWidth/2-110
pilar5_a_on.y = display.contentHeight/2+145

scrollView:insert(pilar5_a_on)

local pilar5_b_on = display.newImageRect("imagenes/pilares/pilar5_b_on.jpg",220,90)
pilar5_b_on.x = display.contentWidth/2+50
pilar5_b_on.y = display.contentHeight/2+145

scrollView:insert(pilar5_b_on)

local pilar5_a_off = display.newImageRect("imagenes/pilares/pilar5_a_off.jpg",100,90)
pilar5_a_off.x = display.contentWidth/2-110
pilar5_a_off.y = display.contentHeight/2+145

scrollView:insert(pilar5_a_off)

pilar5_a_off.isVisible=false

local p5_d1 = display.newImageRect("imagenes/pilares/p5_d1.png",330,50)
p5_d1.x = display.contentWidth/2+4
p5_d1.y = display.contentHeight/2+215
scrollView:insert(p5_d1)

local p5_d2 = display.newImageRect("imagenes/pilares/p5_d2.png",330,50)
p5_d2.x = display.contentWidth/2+4
p5_d2.y = display.contentHeight/2+265
scrollView:insert(p5_d2)

local p5_d3 = display.newImageRect("imagenes/pilares/p5_d3.png",330,50)
p5_d3.x = display.contentWidth/2+4
p5_d3.y = display.contentHeight/2+315
scrollView:insert(p5_d3)

local p5_d4 = display.newImageRect("imagenes/pilares/p5_d4.png",330,50)
p5_d4.x = display.contentWidth/2+4
p5_d4.y = display.contentHeight/2+365
scrollView:insert(p5_d4)

p5_d1.isVisible=false;	
p5_d2.isVisible=false;	
p5_d3.isVisible=false;	
p5_d4.isVisible=false;


local pilar6_a_on = display.newImageRect("imagenes/pilares/pilar6_a_on.jpg",100,90)
pilar6_a_on.x = display.contentWidth/2-110
pilar6_a_on.y = display.contentHeight/2+235

scrollView:insert(pilar6_a_on)

local pilar6_b_on = display.newImageRect("imagenes/pilares/pilar6_b_on.jpg",220,90)
pilar6_b_on.x = display.contentWidth/2+50
pilar6_b_on.y = display.contentHeight/2+235

scrollView:insert(pilar6_b_on)

local pilar6_a_off = display.newImageRect("imagenes/pilares/pilar6_a_off.jpg",100,90)
pilar6_a_off.x = display.contentWidth/2-110
pilar6_a_off.y = display.contentHeight/2+235

scrollView:insert(pilar6_a_off)

pilar6_a_off.isVisible=false

local p6_d1 = display.newImageRect("imagenes/pilares/p6_d1.png",330,50)
p6_d1.x = display.contentWidth/2+4
p6_d1.y = display.contentHeight/2+305
scrollView:insert(p6_d1)

local p6_d2 = display.newImageRect("imagenes/pilares/p6_d2.png",330,50)
p6_d2.x = display.contentWidth/2+4
p6_d2.y = display.contentHeight/2+355
scrollView:insert(p6_d2)

local p6_d3 = display.newImageRect("imagenes/pilares/p6_d3.png",330,50)
p6_d3.x = display.contentWidth/2+4
p6_d3.y = display.contentHeight/2+405
scrollView:insert(p6_d3)

local p6_d4 = display.newImageRect("imagenes/pilares/p6_d4.png",330,50)
p6_d4.x = display.contentWidth/2+4
p6_d4.y = display.contentHeight/2+455
scrollView:insert(p6_d4)

local p6_d5 = display.newImageRect("imagenes/pilares/p6_d5.png",330,50)
p6_d5.x = display.contentWidth/2+4
p6_d5.y = display.contentHeight/2+505
scrollView:insert(p6_d5)

local p6_d6 = display.newImageRect("imagenes/pilares/p6_d6.png",330,50)
p6_d6.x = display.contentWidth/2+4
p6_d6.y = display.contentHeight/2+555
scrollView:insert(p6_d6)

local p6_d7 = display.newImageRect("imagenes/pilares/p6_d7.png",330,50)
p6_d7.x = display.contentWidth/2+4
p6_d7.y = display.contentHeight/2+605
scrollView:insert(p6_d7)

local p6_d8 = display.newImageRect("imagenes/pilares/p6_d8.png",330,50)
p6_d8.x = display.contentWidth/2+4
p6_d8.y = display.contentHeight/2+655
scrollView:insert(p6_d8)

p6_d1.isVisible=false;	
p6_d2.isVisible=false;	
p6_d3.isVisible=false;	
p6_d4.isVisible=false;	
p6_d5.isVisible=false;	
p6_d6.isVisible=false;	
p6_d7.isVisible=false;	
p6_d8.isVisible=false;


local pilar7_a_on = display.newImageRect("imagenes/pilares/pilar7_a_on.jpg",100,90)
pilar7_a_on.x = display.contentWidth/2-110
pilar7_a_on.y = display.contentHeight/2+325

scrollView:insert(pilar7_a_on)

local pilar7_b_on = display.newImageRect("imagenes/pilares/pilar7_b_on.jpg",220,90)
pilar7_b_on.x = display.contentWidth/2+50
pilar7_b_on.y = display.contentHeight/2+325

scrollView:insert(pilar7_b_on)

local pilar7_a_off = display.newImageRect("imagenes/pilares/pilar7_a_off.jpg",100,90)
pilar7_a_off.x = display.contentWidth/2-110
pilar7_a_off.y = display.contentHeight/2+325

scrollView:insert(pilar7_a_off)

pilar7_a_off.isVisible=false

local p7_d1 = display.newImageRect("imagenes/pilares/p7_d1.png",330,50)
p7_d1.x = display.contentWidth/2+4
p7_d1.y = display.contentHeight/2+395
scrollView:insert(p7_d1)

local p7_d2 = display.newImageRect("imagenes/pilares/p7_d2.png",330,50)
p7_d2.x = display.contentWidth/2+4
p7_d2.y = display.contentHeight/2+435
scrollView:insert(p7_d2)

local p7_d3 = display.newImageRect("imagenes/pilares/p7_d3.png",330,50)
p7_d3.x = display.contentWidth/2+4
p7_d3.y = display.contentHeight/2+485
scrollView:insert(p7_d3)

local p7_d4 = display.newImageRect("imagenes/pilares/p7_d4.png",330,50)
p7_d4.x = display.contentWidth/2+4
p7_d4.y = display.contentHeight/2+535
scrollView:insert(p7_d4)

p7_d1.isVisible=false;	
p7_d2.isVisible=false;	
p7_d3.isVisible=false;	
p7_d4.isVisible=false;


local pilar8_a_on = display.newImageRect("imagenes/pilares/pilar8_a_on.jpg",100,90)
pilar8_a_on.x = display.contentWidth/2-110
pilar8_a_on.y = display.contentHeight/2+415

scrollView:insert(pilar8_a_on)

local pilar8_b_on = display.newImageRect("imagenes/pilares/pilar8_b_on.jpg",220,90)
pilar8_b_on.x = display.contentWidth/2+50
pilar8_b_on.y = display.contentHeight/2+415

scrollView:insert(pilar8_b_on)

local pilar8_a_off = display.newImageRect("imagenes/pilares/pilar8_a_off.jpg",100,90)
pilar8_a_off.x = display.contentWidth/2-110
pilar8_a_off.y = display.contentHeight/2+415

scrollView:insert(pilar8_a_off)

pilar8_a_off.isVisible=false

local p8_d1 = display.newImageRect("imagenes/pilares/p8_d1.png",330,50)
p8_d1.x = display.contentWidth/2+4
p8_d1.y = display.contentHeight/2+485
scrollView:insert(p8_d1)

local p8_d2 = display.newImageRect("imagenes/pilares/p8_d2.png",330,50)
p8_d2.x = display.contentWidth/2+4
p8_d2.y = display.contentHeight/2+535
scrollView:insert(p8_d2)

p8_d1.isVisible=false;	
p8_d2.isVisible=false;	


local pilar9_a_on = display.newImageRect("imagenes/pilares/pilar9_a_on.jpg",100,90)
pilar9_a_on.x = display.contentWidth/2-110
pilar9_a_on.y = display.contentHeight/2+505

scrollView:insert(pilar9_a_on)

local pilar9_b_on = display.newImageRect("imagenes/pilares/pilar9_b_on.jpg",220,90)
pilar9_b_on.x = display.contentWidth/2+50
pilar9_b_on.y = display.contentHeight/2+505

scrollView:insert(pilar9_b_on)

local pilar9_a_off = display.newImageRect("imagenes/pilares/pilar9_a_off.jpg",100,90)
pilar9_a_off.x = display.contentWidth/2-110
pilar9_a_off.y = display.contentHeight/2+505

scrollView:insert(pilar9_a_off)

pilar9_a_off.isVisible=false

local p9_d1 = display.newImageRect("imagenes/pilares/p9_d1.png",330,50)
p9_d1.x = display.contentWidth/2+4
p9_d1.y = display.contentHeight/2+575
scrollView:insert(p9_d1)

local p9_d2 = display.newImageRect("imagenes/pilares/p9_d2.png",330,50)
p9_d2.x = display.contentWidth/2+4
p9_d2.y = display.contentHeight/2+625
scrollView:insert(p9_d2)

local p9_d3 = display.newImageRect("imagenes/pilares/p9_d3.png",330,50)
p9_d3.x = display.contentWidth/2+4
p9_d3.y = display.contentHeight/2+675
scrollView:insert(p9_d3)

local p9_d4 = display.newImageRect("imagenes/pilares/p9_d4.png",330,50)
p9_d4.x = display.contentWidth/2+4
p9_d4.y = display.contentHeight/2+725
scrollView:insert(p9_d4)

local p9_d5 = display.newImageRect("imagenes/pilares/p9_d5.png",330,50)
p9_d5.x = display.contentWidth/2+4
p9_d5.y = display.contentHeight/2+775
scrollView:insert(p9_d5)

local p9_d6 = display.newImageRect("imagenes/pilares/p9_d6.png",330,50)
p9_d6.x = display.contentWidth/2+4
p9_d6.y = display.contentHeight/2+825
scrollView:insert(p9_d6)

local p9_d7 = display.newImageRect("imagenes/pilares/p9_d7.png",330,50)
p9_d7.x = display.contentWidth/2+4
p9_d7.y = display.contentHeight/2+875
scrollView:insert(p9_d7)

local p9_d8 = display.newImageRect("imagenes/pilares/p9_d8.png",330,50)
p9_d8.x = display.contentWidth/2+4
p9_d8.y = display.contentHeight/2+925
scrollView:insert(p9_d8)

p9_d1.isVisible=false;	
p9_d2.isVisible=false;	
p9_d3.isVisible=false;
p9_d4.isVisible=false;	
p9_d5.isVisible=false;	
p9_d6.isVisible=false;
p9_d7.isVisible=false;	
p9_d8.isVisible=false;	


local pilar10_a_on = display.newImageRect("imagenes/pilares/pilar10_a_on.jpg",100,90)
pilar10_a_on.x = display.contentWidth/2-110
pilar10_a_on.y = display.contentHeight/2+595

scrollView:insert(pilar10_a_on)

local pilar10_b_on = display.newImageRect("imagenes/pilares/pilar10_b_on.jpg",220,90)
pilar10_b_on.x = display.contentWidth/2+50
pilar10_b_on.y = display.contentHeight/2+595

scrollView:insert(pilar10_b_on)

local pilar10_a_off = display.newImageRect("imagenes/pilares/pilar10_a_off.jpg",100,90)
pilar10_a_off.x = display.contentWidth/2-110
pilar10_a_off.y = display.contentHeight/2+595

scrollView:insert(pilar10_a_off)

pilar10_a_off.isVisible=false

local p10_d1 = display.newImageRect("imagenes/pilares/p10_d1.png",330,50)
p10_d1.x = display.contentWidth/2+4
p10_d1.y = display.contentHeight/2+665
scrollView:insert(p10_d1)

local p10_d2 = display.newImageRect("imagenes/pilares/p10_d2.png",330,50)
p10_d2.x = display.contentWidth/2+4
p10_d2.y = display.contentHeight/2+715
scrollView:insert(p10_d2)

local p10_d3 = display.newImageRect("imagenes/pilares/p10_d3.png",330,50)
p10_d3.x = display.contentWidth/2+4
p10_d3.y = display.contentHeight/2+765
scrollView:insert(p10_d3)

p10_d1.isVisible=false;	
p10_d2.isVisible=false;	
p10_d3.isVisible=false;	


local pilar11_a_on = display.newImageRect("imagenes/pilares/pilar11_a_on.jpg",100,90)
pilar11_a_on.x = display.contentWidth/2-110
pilar11_a_on.y = display.contentHeight/2+685

scrollView:insert(pilar11_a_on)

local pilar11_b_on = display.newImageRect("imagenes/pilares/pilar11_b_on.jpg",220,90)
pilar11_b_on.x = display.contentWidth/2+50
pilar11_b_on.y = display.contentHeight/2+685

scrollView:insert(pilar11_b_on)

local pilar11_a_off = display.newImageRect("imagenes/pilares/pilar11_a_off.jpg",100,90)
pilar11_a_off.x = display.contentWidth/2-110
pilar11_a_off.y = display.contentHeight/2+685

scrollView:insert(pilar11_a_off)

pilar11_a_off.isVisible=false

local p11_d1 = display.newImageRect("imagenes/pilares/p11_d1.png",330,50)
p11_d1.x = display.contentWidth/2+4
p11_d1.y = display.contentHeight/2+755
scrollView:insert(p11_d1)

local p11_d2 = display.newImageRect("imagenes/pilares/p11_d2.png",330,50)
p11_d2.x = display.contentWidth/2+4
p11_d2.y = display.contentHeight/2+805
scrollView:insert(p11_d2)

local p11_d3 = display.newImageRect("imagenes/pilares/p11_d3.png",330,50)
p11_d3.x = display.contentWidth/2+4
p11_d3.y = display.contentHeight/2+855
scrollView:insert(p11_d3)

local p11_d4 = display.newImageRect("imagenes/pilares/p11_d4.png",330,50)
p11_d4.x = display.contentWidth/2+4
p11_d4.y = display.contentHeight/2+905
scrollView:insert(p11_d4)

local p11_d5 = display.newImageRect("imagenes/pilares/p11_d5.png",330,50)
p11_d5.x = display.contentWidth/2+4
p11_d5.y = display.contentHeight/2+955
scrollView:insert(p11_d5)

p11_d1.isVisible=false;	
p11_d2.isVisible=false;	
p11_d3.isVisible=false;
p11_d4.isVisible=false;	
p11_d5.isVisible=false;	


local pilar12_a_on = display.newImageRect("imagenes/pilares/pilar12_a_on.jpg",100,90)
pilar12_a_on.x = display.contentWidth/2-110
pilar12_a_on.y = display.contentHeight/2+775

scrollView:insert(pilar12_a_on)

local pilar12_b_on = display.newImageRect("imagenes/pilares/pilar12_b_on.jpg",220,90)
pilar12_b_on.x = display.contentWidth/2+50
pilar12_b_on.y = display.contentHeight/2+775

scrollView:insert(pilar12_b_on)

local pilar12_a_off = display.newImageRect("imagenes/pilares/pilar12_a_off.jpg",100,90)
pilar12_a_off.x = display.contentWidth/2-110
pilar12_a_off.y = display.contentHeight/2+775

scrollView:insert(pilar12_a_off)

pilar12_a_off.isVisible=false

local p12_d1 = display.newImageRect("imagenes/pilares/p12_d1.png",330,50)
p12_d1.x = display.contentWidth/2+4
p12_d1.y = display.contentHeight/2+845
scrollView:insert(p12_d1)

local p12_d2 = display.newImageRect("imagenes/pilares/p12_d2.png",330,50)
p12_d2.x = display.contentWidth/2+4
p12_d2.y = display.contentHeight/2+895
scrollView:insert(p12_d2)

p12_d1.isVisible=false;	
p12_d2.isVisible=false;	


local pilar13_a_on = display.newImageRect("imagenes/pilares/pilar13_a_on.jpg",100,90)
pilar13_a_on.x = display.contentWidth/2-110
pilar13_a_on.y = display.contentHeight/2+865

scrollView:insert(pilar13_a_on)

local pilar13_b_on = display.newImageRect("imagenes/pilares/pilar13_b_on.jpg",220,90)
pilar13_b_on.x = display.contentWidth/2+50
pilar13_b_on.y = display.contentHeight/2+865

scrollView:insert(pilar13_b_on)

local pilar13_a_off = display.newImageRect("imagenes/pilares/pilar13_a_off.jpg",100,90)
pilar13_a_off.x = display.contentWidth/2-110
pilar13_a_off.y = display.contentHeight/2+865

scrollView:insert(pilar13_a_off)

pilar13_a_off.isVisible=false
	

	
local bandera=0



function pilar1_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then



p1_d1.isVisible=true;	
p1_d2.isVisible=true;	
p1_d3.isVisible=true;	
pilar1_a_on.isVisible=false;
pilar1_a_off.isVisible=true;

pilar2_a_on.y = display.contentHeight/2+15
pilar2_b_on.y = display.contentHeight/2+15

pilar3_a_on.y = display.contentHeight/2+105
pilar3_b_on.y = display.contentHeight/2+105

pilar4_a_on.y = display.contentHeight/2+195
pilar4_b_on.y = display.contentHeight/2+195

pilar5_a_on.y = display.contentHeight/2+285
pilar5_b_on.y = display.contentHeight/2+285

pilar6_a_on.y = display.contentHeight/2+375
pilar6_b_on.y = display.contentHeight/2+375

pilar7_a_on.y = display.contentHeight/2+465
pilar7_b_on.y = display.contentHeight/2+465

pilar8_a_on.y = display.contentHeight/2+555
pilar8_b_on.y = display.contentHeight/2+555

pilar9_a_on.y = display.contentHeight/2+645
pilar9_b_on.y = display.contentHeight/2+645

pilar10_a_on.y = display.contentHeight/2+735
pilar10_b_on.y = display.contentHeight/2+735

pilar11_a_on.y = display.contentHeight/2+825
pilar11_b_on.y = display.contentHeight/2+825

pilar12_a_on.y = display.contentHeight/2+915
pilar12_b_on.y = display.contentHeight/2+915

pilar13_a_on.y = display.contentHeight/2+1005
pilar13_b_on.y = display.contentHeight/2+1005




end
end
return true
end

pilar1_a_on :addEventListener("touch",pilar1_a_on )

function pilar1_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;

p1_d1.isVisible=false;	
p1_d2.isVisible=false;	
p1_d3.isVisible=false;	
pilar1_a_on.isVisible=true;
pilar1_a_off.isVisible=false;


pilar2_a_on.y = display.contentHeight/2-125
pilar2_b_on.y = display.contentHeight/2-125

pilar3_a_on.y = display.contentHeight/2-35
pilar3_b_on.y = display.contentHeight/2-35

pilar4_a_on.y = display.contentHeight/2+55
pilar4_b_on.y = display.contentHeight/2+55

pilar5_a_on.y = display.contentHeight/2+145
pilar5_b_on.y = display.contentHeight/2+145

pilar6_a_on.y = display.contentHeight/2+235
pilar6_b_on.y = display.contentHeight/2+235

pilar7_a_on.y = display.contentHeight/2+325
pilar7_b_on.y = display.contentHeight/2+325

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865






end
return true
end

pilar1_a_off :addEventListener("touch",pilar1_a_off )

function pilar2_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;



if(bandera==1) then


p2_d1.isVisible=true;	
p2_d2.isVisible=true;	
p2_d3.isVisible=true;
p2_d4.isVisible=true;	
p2_d5.isVisible=true;	
p2_d6.isVisible=true;
p2_d7.isVisible=true;	
p2_d8.isVisible=true;	
p2_d9.isVisible=true;	
p2_d10.isVisible=true;	
p2_d11.isVisible=true;	
pilar2_a_on.isVisible=false;
pilar2_a_off.isVisible=true;

pilar3_a_on.y = display.contentHeight/2+515
pilar3_b_on.y = display.contentHeight/2+515

pilar4_a_on.y = display.contentHeight/2+605
pilar4_b_on.y = display.contentHeight/2+605

pilar5_a_on.y = display.contentHeight/2+695
pilar5_b_on.y = display.contentHeight/2+695

pilar6_a_on.y = display.contentHeight/2+785
pilar6_b_on.y = display.contentHeight/2+785

pilar7_a_on.y = display.contentHeight/2+875
pilar7_b_on.y = display.contentHeight/2+875

pilar8_a_on.y = display.contentHeight/2+965
pilar8_b_on.y = display.contentHeight/2+965

pilar9_a_on.y = display.contentHeight/2+1055
pilar9_b_on.y = display.contentHeight/2+1055

pilar10_a_on.y = display.contentHeight/2+1145
pilar10_b_on.y = display.contentHeight/2+1145

pilar11_a_on.y = display.contentHeight/2+1235
pilar11_b_on.y = display.contentHeight/2+1235

pilar12_a_on.y = display.contentHeight/2+1325
pilar12_b_on.y = display.contentHeight/2+1325

pilar13_a_on.y = display.contentHeight/2+1415
pilar13_b_on.y = display.contentHeight/2+1415

end
end
return true
end

pilar2_a_on :addEventListener("touch",pilar2_a_on )

function pilar2_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;
p2_d1.isVisible=false;	
p2_d2.isVisible=false;	
p2_d3.isVisible=false;	
p2_d4.isVisible=false;	
p2_d5.isVisible=false;	
p2_d6.isVisible=false;
p2_d7.isVisible=false;	
p2_d8.isVisible=false;	
p2_d9.isVisible=false;
p2_d10.isVisible=false;	
p2_d11.isVisible=false;	

pilar2_a_on.isVisible=true;
pilar2_a_off.isVisible=false;

pilar3_a_on.y = display.contentHeight/2-35
pilar3_b_on.y = display.contentHeight/2-35

pilar4_a_on.y = display.contentHeight/2+55
pilar4_b_on.y = display.contentHeight/2+55

pilar5_a_on.y = display.contentHeight/2+145
pilar5_b_on.y = display.contentHeight/2+145

pilar6_a_on.y = display.contentHeight/2+235
pilar6_b_on.y = display.contentHeight/2+235

pilar7_a_on.y = display.contentHeight/2+325
pilar7_b_on.y = display.contentHeight/2+325

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865
end
return true
end

pilar2_a_off :addEventListener("touch",pilar2_a_off )

function pilar3_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p3_d1.isVisible=true;	
p3_d2.isVisible=true;	
p3_d3.isVisible=true;	
pilar3_a_on.isVisible=false;
pilar3_a_off.isVisible=true;

pilar4_a_on.y = display.contentHeight/2+205
pilar4_b_on.y = display.contentHeight/2+205

pilar5_a_on.y = display.contentHeight/2+295
pilar5_b_on.y = display.contentHeight/2+295

pilar6_a_on.y = display.contentHeight/2+385
pilar6_b_on.y = display.contentHeight/2+385

pilar7_a_on.y = display.contentHeight/2+475
pilar7_b_on.y = display.contentHeight/2+475

pilar8_a_on.y = display.contentHeight/2+565
pilar8_b_on.y = display.contentHeight/2+565

pilar9_a_on.y = display.contentHeight/2+655
pilar9_b_on.y = display.contentHeight/2+655

pilar10_a_on.y = display.contentHeight/2+745
pilar10_b_on.y = display.contentHeight/2+745

pilar11_a_on.y = display.contentHeight/2+835
pilar11_b_on.y = display.contentHeight/2+835

pilar12_a_on.y = display.contentHeight/2+925
pilar12_b_on.y = display.contentHeight/2+925

pilar13_a_on.y = display.contentHeight/2+1015
pilar13_b_on.y = display.contentHeight/2+1015


end
end
return true
end

pilar3_a_on :addEventListener("touch",pilar3_a_on )

function pilar3_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;

p3_d1.isVisible=false;	
p3_d2.isVisible=false;	
p3_d3.isVisible=false;	
pilar3_a_on.isVisible=true;
pilar3_a_off.isVisible=false;

pilar4_a_on.y = display.contentHeight/2+55
pilar4_b_on.y = display.contentHeight/2+55

pilar5_a_on.y = display.contentHeight/2+145
pilar5_b_on.y = display.contentHeight/2+145

pilar6_a_on.y = display.contentHeight/2+235
pilar6_b_on.y = display.contentHeight/2+235

pilar7_a_on.y = display.contentHeight/2+325
pilar7_b_on.y = display.contentHeight/2+325

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865
end
return true
end

pilar3_a_off :addEventListener("touch",pilar3_a_off )

function pilar4_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p4_d1.isVisible=true;	
p4_d2.isVisible=true;	
p4_d3.isVisible=true;	
p4_d4.isVisible=true;
pilar4_a_on.isVisible=false;
pilar4_a_off.isVisible=true;


pilar5_a_on.y = display.contentHeight/2+345
pilar5_b_on.y = display.contentHeight/2+345

pilar6_a_on.y = display.contentHeight/2+435
pilar6_b_on.y = display.contentHeight/2+435

pilar7_a_on.y = display.contentHeight/2+525
pilar7_b_on.y = display.contentHeight/2+525

pilar8_a_on.y = display.contentHeight/2+615
pilar8_b_on.y = display.contentHeight/2+615

pilar9_a_on.y = display.contentHeight/2+705
pilar9_b_on.y = display.contentHeight/2+705

pilar10_a_on.y = display.contentHeight/2+795
pilar10_b_on.y = display.contentHeight/2+795

pilar11_a_on.y = display.contentHeight/2+885
pilar11_b_on.y = display.contentHeight/2+885

pilar12_a_on.y = display.contentHeight/2+975
pilar12_b_on.y = display.contentHeight/2+975

pilar13_a_on.y = display.contentHeight/2+1065
pilar13_b_on.y = display.contentHeight/2+1065


end
end
return true
end

pilar4_a_on :addEventListener("touch",pilar4_a_on )

function pilar4_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;

p4_d1.isVisible=false;	
p4_d2.isVisible=false;	
p4_d3.isVisible=false;	
p4_d4.isVisible=false;
pilar4_a_on.isVisible=true;
pilar4_a_off.isVisible=false;

pilar5_a_on.y = display.contentHeight/2+145
pilar5_b_on.y = display.contentHeight/2+145

pilar6_a_on.y = display.contentHeight/2+235
pilar6_b_on.y = display.contentHeight/2+235

pilar7_a_on.y = display.contentHeight/2+325
pilar7_b_on.y = display.contentHeight/2+325

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865

end
return true
end

pilar4_a_off :addEventListener("touch",pilar4_a_off )

function pilar5_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p5_d1.isVisible=true;	
p5_d2.isVisible=true;	
p5_d3.isVisible=true;	
p5_d4.isVisible=true;
pilar5_a_on.isVisible=false;
pilar5_a_off.isVisible=true;

pilar6_a_on.y = display.contentHeight/2+435
pilar6_b_on.y = display.contentHeight/2+435

pilar7_a_on.y = display.contentHeight/2+525
pilar7_b_on.y = display.contentHeight/2+525

pilar8_a_on.y = display.contentHeight/2+615
pilar8_b_on.y = display.contentHeight/2+615

pilar9_a_on.y = display.contentHeight/2+705
pilar9_b_on.y = display.contentHeight/2+705

pilar10_a_on.y = display.contentHeight/2+795
pilar10_b_on.y = display.contentHeight/2+795

pilar11_a_on.y = display.contentHeight/2+885
pilar11_b_on.y = display.contentHeight/2+885

pilar12_a_on.y = display.contentHeight/2+975
pilar12_b_on.y = display.contentHeight/2+975

pilar13_a_on.y = display.contentHeight/2+1065
pilar13_b_on.y = display.contentHeight/2+1065
end
end
return true
end

pilar5_a_on :addEventListener("touch",pilar5_a_on )

function pilar5_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;


p5_d1.isVisible=false;	
p5_d2.isVisible=false;	
p5_d3.isVisible=false;	
p5_d4.isVisible=false;
pilar5_a_on.isVisible=true;
pilar5_a_off.isVisible=false;

pilar6_a_on.y = display.contentHeight/2+235
pilar6_b_on.y = display.contentHeight/2+235

pilar7_a_on.y = display.contentHeight/2+325
pilar7_b_on.y = display.contentHeight/2+325

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865
end
return true
end

pilar5_a_off :addEventListener("touch",pilar5_a_off )

function pilar6_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p6_d1.isVisible=true;	
p6_d2.isVisible=true;	
p6_d3.isVisible=true;	
p6_d4.isVisible=true;	
p6_d5.isVisible=true;	
p6_d6.isVisible=true;
p6_d7.isVisible=true;	
p6_d8.isVisible=true;	
pilar6_a_on.isVisible=false;
pilar6_a_off.isVisible=true;

pilar7_a_on.y = display.contentHeight/2+725
pilar7_b_on.y = display.contentHeight/2+725

pilar8_a_on.y = display.contentHeight/2+815
pilar8_b_on.y = display.contentHeight/2+815

pilar9_a_on.y = display.contentHeight/2+905
pilar9_b_on.y = display.contentHeight/2+905

pilar10_a_on.y = display.contentHeight/2+995
pilar10_b_on.y = display.contentHeight/2+995

pilar11_a_on.y = display.contentHeight/2+1085
pilar11_b_on.y = display.contentHeight/2+1085

pilar12_a_on.y = display.contentHeight/2+1175
pilar12_b_on.y = display.contentHeight/2+1175

pilar13_a_on.y = display.contentHeight/2+1265
pilar13_b_on.y = display.contentHeight/2+1265


end
end
return true
end

pilar6_a_on :addEventListener("touch",pilar6_a_on )

function pilar6_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;


p6_d1.isVisible=false;	
p6_d2.isVisible=false;	
p6_d3.isVisible=false;	
p6_d4.isVisible=false;	
p6_d5.isVisible=false;	
p6_d6.isVisible=false;	
p6_d7.isVisible=false;	
p6_d8.isVisible=false;		
pilar6_a_on.isVisible=true;
pilar6_a_off.isVisible=false;

pilar7_a_on.y = display.contentHeight/2+325
pilar7_b_on.y = display.contentHeight/2+325

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865
end
return true
end

pilar6_a_off :addEventListener("touch",pilar6_a_off )

function pilar7_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p7_d1.isVisible=true;	
p7_d2.isVisible=true;	
p7_d3.isVisible=true;	
p7_d4.isVisible=true;
pilar7_a_on.isVisible=false;
pilar7_a_off.isVisible=true;

pilar8_a_on.y = display.contentHeight/2+605
pilar8_b_on.y = display.contentHeight/2+605

pilar9_a_on.y = display.contentHeight/2+695
pilar9_b_on.y = display.contentHeight/2+695

pilar10_a_on.y = display.contentHeight/2+785
pilar10_b_on.y = display.contentHeight/2+785

pilar11_a_on.y = display.contentHeight/2+875
pilar11_b_on.y = display.contentHeight/2+875

pilar12_a_on.y = display.contentHeight/2+965
pilar12_b_on.y = display.contentHeight/2+965

pilar13_a_on.y = display.contentHeight/2+1055
pilar13_b_on.y = display.contentHeight/2+1055


end
end
return true
end

pilar7_a_on :addEventListener("touch",pilar7_a_on )

function pilar7_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;


p7_d1.isVisible=false;	
p7_d2.isVisible=false;	
p7_d3.isVisible=false;	
p7_d4.isVisible=false;
pilar7_a_on.isVisible=true;
pilar7_a_off.isVisible=false;

pilar8_a_on.y = display.contentHeight/2+415
pilar8_b_on.y = display.contentHeight/2+415

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865
end
return true
end

pilar7_a_off :addEventListener("touch",pilar7_a_off )

function pilar8_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p8_d1.isVisible=true;	
p8_d2.isVisible=true;	
pilar8_a_on.isVisible=false;
pilar8_a_off.isVisible=true;

pilar9_a_on.y = display.contentHeight/2+605
pilar9_b_on.y = display.contentHeight/2+605

pilar10_a_on.y = display.contentHeight/2+695
pilar10_b_on.y = display.contentHeight/2+695

pilar11_a_on.y = display.contentHeight/2+785
pilar11_b_on.y = display.contentHeight/2+785

pilar12_a_on.y = display.contentHeight/2+875
pilar12_b_on.y = display.contentHeight/2+875

pilar13_a_on.y = display.contentHeight/2+965
pilar13_b_on.y = display.contentHeight/2+965


end
end
return true
end

pilar8_a_on :addEventListener("touch",pilar8_a_on )

function pilar8_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;
p8_d1.isVisible=false;	
p8_d2.isVisible=false;	
pilar8_a_on.isVisible=true;
pilar8_a_off.isVisible=false;

pilar9_a_on.y = display.contentHeight/2+505
pilar9_b_on.y = display.contentHeight/2+505

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865
end
return true
end

pilar8_a_off :addEventListener("touch",pilar8_a_off )

function pilar9_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p9_d1.isVisible=true;	
p9_d2.isVisible=true;	
p9_d3.isVisible=true;
p9_d4.isVisible=true;	
p9_d5.isVisible=true;	
p9_d6.isVisible=true;
p9_d7.isVisible=true;	
p9_d8.isVisible=true;	
pilar9_a_on.isVisible=false;
pilar9_a_off.isVisible=true;

pilar10_a_on.y = display.contentHeight/2+995
pilar10_b_on.y = display.contentHeight/2+995

pilar11_a_on.y = display.contentHeight/2+1085
pilar11_b_on.y = display.contentHeight/2+1085

pilar12_a_on.y = display.contentHeight/2+1175
pilar12_b_on.y = display.contentHeight/2+1175

pilar13_a_on.y = display.contentHeight/2+1265
pilar13_b_on.y = display.contentHeight/2+1265
end
end
return true
end

pilar9_a_on :addEventListener("touch",pilar9_a_on )

function pilar9_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;



p9_d1.isVisible=false;	
p9_d2.isVisible=false;	
p9_d3.isVisible=false;
p9_d4.isVisible=false;	
p9_d5.isVisible=false;	
p9_d6.isVisible=false;
p9_d7.isVisible=false;	
p9_d8.isVisible=false;	
pilar9_a_on.isVisible=true;
pilar9_a_off.isVisible=false;

pilar10_a_on.y = display.contentHeight/2+595
pilar10_b_on.y = display.contentHeight/2+595

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865

end
return true
end

pilar9_a_off :addEventListener("touch",pilar9_a_off )

function pilar10_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p10_d1.isVisible=true;	
p10_d2.isVisible=true;	
p10_d3.isVisible=true;	
pilar10_a_on.isVisible=false;
pilar10_a_off.isVisible=true;

pilar11_a_on.y = display.contentHeight/2+835
pilar11_b_on.y = display.contentHeight/2+835

pilar12_a_on.y = display.contentHeight/2+925
pilar12_b_on.y = display.contentHeight/2+925

pilar13_a_on.y = display.contentHeight/2+1015
pilar13_b_on.y = display.contentHeight/2+1015
end
end
return true
end

pilar10_a_on :addEventListener("touch",pilar10_a_on )

function pilar10_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;




p10_d1.isVisible=false;	
p10_d2.isVisible=false;	
p10_d3.isVisible=false;	
pilar10_a_on.isVisible=true;
pilar10_a_off.isVisible=false;

pilar11_a_on.y = display.contentHeight/2+685
pilar11_b_on.y = display.contentHeight/2+685

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865

end
return true
end

pilar10_a_off :addEventListener("touch",pilar10_a_off )

function pilar11_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then

p11_d1.isVisible=true;	
p11_d2.isVisible=true;	
p11_d3.isVisible=true;	
p11_d4.isVisible=true;	
p11_d5.isVisible=true;	
pilar11_a_on.isVisible=false;
pilar11_a_off.isVisible=true;

pilar12_a_on.y = display.contentHeight/2+1025
pilar12_b_on.y = display.contentHeight/2+1025

pilar13_a_on.y = display.contentHeight/2+1115
pilar13_b_on.y = display.contentHeight/2+1115

end
end
return true
end

pilar11_a_on :addEventListener("touch",pilar11_a_on )

function pilar11_a_off :touch( event )
if ( event.phase == "began" ) then

bandera=0;



p11_d1.isVisible=false;	
p11_d2.isVisible=false;	
p11_d3.isVisible=false;
p11_d4.isVisible=false;	
p11_d5.isVisible=false;	
pilar11_a_on.isVisible=true;
pilar11_a_off.isVisible=false;

pilar12_a_on.y = display.contentHeight/2+775
pilar12_b_on.y = display.contentHeight/2+775

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865


end
return true
end

pilar11_a_off :addEventListener("touch",pilar11_a_off )

function pilar12_a_on :touch( event )
if ( event.phase == "began" ) then

bandera=bandera+1;

if(bandera==1) then


p12_d1.isVisible=true;	
p12_d2.isVisible=true;	
pilar12_a_on.isVisible=false;
pilar12_a_off.isVisible=true;
pilar13_a_on.y = display.contentHeight/2+965
pilar13_b_on.y = display.contentHeight/2+965
end
end
return true
end

pilar12_a_on :addEventListener("touch",pilar12_a_on )

function pilar12_a_off :touch( event )
if ( event.phase == "began" ) then


bandera=0;




p12_d1.isVisible=false;	
p12_d2.isVisible=false;		
pilar12_a_on.isVisible=true;
pilar12_a_off.isVisible=false;

pilar13_a_on.y = display.contentHeight/2+865
pilar13_b_on.y = display.contentHeight/2+865

end
return true
end

pilar12_a_off :addEventListener("touch",pilar12_a_off )


function irPrincipall()
	
	if scrollView then 
	scrollView:removeSelf() 
	scrollView = nil
	composer.removeScene('pilares',false) 
	composer.gotoScene("principal", { effect = "fade", time = 100 } )
	end 
end

btnAprende:addEventListener("touch",irPrincipall)
	


function funcion_p1d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("1_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p1_d1:addEventListener("tap",funcion_p1d1)


function funcion_p1d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("1_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p1_d2:addEventListener("tap",funcion_p1d2)


function funcion_p1d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("1_pilar_meta4", { effect = "fade", time = 100 } )
end 
end 

p1_d3:addEventListener("tap",funcion_p1d3)


function funcion_p2d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p2_d1:addEventListener("tap",funcion_p2d1)


function funcion_p2d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p2_d2:addEventListener("tap",funcion_p2d2)


function funcion_p2d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p2_d3:addEventListener("tap",funcion_p2d3)


function funcion_p2d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta4", { effect = "fade", time = 100 } )
end 
end 

p2_d4:addEventListener("tap",funcion_p2d4)


function funcion_p2d5()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta5", { effect = "fade", time = 100 } )
end 
end 

p2_d5:addEventListener("tap",funcion_p2d5)


function funcion_p2d6()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta6", { effect = "fade", time = 100 } )
end 
end 

p2_d6:addEventListener("tap",funcion_p2d6)


function funcion_p2d7()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta7", { effect = "fade", time = 100 } )
end 
end 

p2_d7:addEventListener("tap",funcion_p2d7)


function funcion_p2d8()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta8", { effect = "fade", time = 100 } )
end 
end 

p2_d8:addEventListener("tap",funcion_p2d8)


function funcion_p2d9()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta9", { effect = "fade", time = 100 } )
end 
end 

p2_d9:addEventListener("tap",funcion_p2d9)


function funcion_p2d10()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta10", { effect = "fade", time = 100 } )
end 
end 

p2_d10:addEventListener("tap",funcion_p2d10)


function funcion_p2d11()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("2_pilar_meta11", { effect = "fade", time = 100 } )
end 
end 

p2_d11:addEventListener("tap",funcion_p2d11)


function funcion_p3d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("3_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p3_d1:addEventListener("tap",funcion_p3d1)


function funcion_p3d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("3_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p3_d2:addEventListener("tap",funcion_p3d2)


function funcion_p3d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("3_pilar_meta5", { effect = "fade", time = 100 } )
end 
end 

p3_d3:addEventListener("tap",funcion_p3d3)


function funcion_p4d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("4_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p4_d1:addEventListener("tap",funcion_p4d1)


function funcion_p4d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("4_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p4_d2:addEventListener("tap",funcion_p4d2)


function funcion_p4d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("4_pilar_meta5", { effect = "fade", time = 100 } )
end 
end 

p4_d3:addEventListener("tap",funcion_p4d3)


function funcion_p4d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("4_pilar_meta7", { effect = "fade", time = 100 } )
end 
end 

p4_d4:addEventListener("tap",funcion_p4d4)



function funcion_p5d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("5_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p5_d1:addEventListener("tap",funcion_p5d1)


function funcion_p5d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("5_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p5_d2:addEventListener("tap",funcion_p5d2)


function funcion_p5d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("5_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p5_d3:addEventListener("tap",funcion_p5d3)


function funcion_p5d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("5_pilar_meta5", { effect = "fade", time = 100 } )
end 
end 

p5_d4:addEventListener("tap",funcion_p5d4)



function funcion_p6d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p6_d1:addEventListener("tap",funcion_p6d1)


function funcion_p6d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p6_d2:addEventListener("tap",funcion_p6d2)


function funcion_p6d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta4", { effect = "fade", time = 100 } )
end 
end 

p6_d3:addEventListener("tap",funcion_p6d3)


function funcion_p6d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta6", { effect = "fade", time = 100 } )
end 
end 

p6_d4:addEventListener("tap",funcion_p6d4)


function funcion_p6d5()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta7", { effect = "fade", time = 100 } )
end 
end 

p6_d5:addEventListener("tap",funcion_p6d5)


function funcion_p6d6()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta8", { effect = "fade", time = 100 } )
end 
end 

p6_d6:addEventListener("tap",funcion_p6d6)


function funcion_p6d7()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta13", { effect = "fade", time = 100 } )
end 
end 

p6_d7:addEventListener("tap",funcion_p6d7)


function funcion_p6d8()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("6_pilar_meta14", { effect = "fade", time = 100 } )
end 
end 

p6_d8:addEventListener("tap",funcion_p6d8)


function funcion_p7d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("7_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p7_d1:addEventListener("tap",funcion_p7d1)


function funcion_p7d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("7_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p7_d2:addEventListener("tap",funcion_p7d2)


function funcion_p7d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("7_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p7_d3:addEventListener("tap",funcion_p7d3)


function funcion_p7d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("7_pilar_meta4", { effect = "fade", time = 100 } )
end 
end 

p7_d4:addEventListener("tap",funcion_p7d4)



function funcion_p8d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("8_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p8_d1:addEventListener("tap",funcion_p8d1)


function funcion_p8d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("8_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p8_d2:addEventListener("tap",funcion_p8d2)


function funcion_p9d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p9_d1:addEventListener("tap",funcion_p9d1)


function funcion_p9d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p9_d2:addEventListener("tap",funcion_p9d2)


function funcion_p9d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta4", { effect = "fade", time = 100 } )
end 
end 

p9_d3:addEventListener("tap",funcion_p9d3)


function funcion_p9d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta5", { effect = "fade", time = 100 } )
end 
end 

p9_d4:addEventListener("tap",funcion_p9d4)


function funcion_p9d5()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta6", { effect = "fade", time = 100 } )
end 
end 

p9_d5:addEventListener("tap",funcion_p9d5)


function funcion_p9d6()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta7", { effect = "fade", time = 100 } )
end 
end 

p9_d6:addEventListener("tap",funcion_p9d6)


function funcion_p9d7()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta8", { effect = "fade", time = 100 } )
end 
end 

p9_d7:addEventListener("tap",funcion_p9d7)


function funcion_p9d8()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("9_pilar_meta9", { effect = "fade", time = 100 } )
end 
end 

p9_d8:addEventListener("tap",funcion_p9d8)


function funcion_p10d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("10_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p10_d1:addEventListener("tap",funcion_p10d1)


function funcion_p10d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("10_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p10_d2:addEventListener("tap",funcion_p10d2)


function funcion_p10d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("10_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p10_d3:addEventListener("tap",funcion_p10d3)


function funcion_p11d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("11_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p11_d1:addEventListener("tap",funcion_p11d1)


function funcion_p11d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("11_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p11_d2:addEventListener("tap",funcion_p11d2)


function funcion_p11d3()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("11_pilar_meta3", { effect = "fade", time = 100 } )
end 
end 

p11_d3:addEventListener("tap",funcion_p11d3)


function funcion_p11d4()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("11_pilar_meta4", { effect = "fade", time = 100 } )
end 
end 

p11_d4:addEventListener("tap",funcion_p11d4)


function funcion_p11d5()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("11_pilar_meta5", { effect = "fade", time = 100 } )
end 
end 

p11_d5:addEventListener("tap",funcion_p11d5)


function funcion_p12d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("12_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

p12_d1:addEventListener("tap",funcion_p12d1)


function funcion_p12d2()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("12_pilar_meta2", { effect = "fade", time = 100 } )
end 
end 

p12_d2:addEventListener("tap",funcion_p12d2)



function funcion_p13d1()
if scrollView then 
scrollView:removeSelf() 
scrollView = nil 
composer.removeScene("pilares",false) 
composer.gotoScene("13_pilar_meta1", { effect = "fade", time = 100 } )
end 
end 

pilar13_a_on:addEventListener("tap",funcion_p13d1)







 local function onKeyEvent( event )
    local keyname = event.keyName;
    if (event.phase == "up" and (event.keyName=="back" or event.keyName=="menu")) then
            if keyname == "menu" then
            	goToMenuScreen()
            elseif keyname == "back" then
			
				if scrollView then 
				scrollView:removeSelf() 
				scrollView = nil 
				composer.removeScene("pilares",false) 
				composer.gotoScene("principal", { effect = "fade", time = 100 } )
				end 
          
            elseif keyname == "search" then
            	performSearch();
            end
	end
    return true;
end
 --add the runtime event listener
if system.getInfo( "platformName" ) == "Android" then  Runtime:addEventListener( "key", onKeyEvent ) end




		

		
	
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
	

    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene