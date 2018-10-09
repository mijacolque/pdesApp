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
	
		local btnAprende = display.newImageRect("imagenes/geolocaliza/btn_geolocaliza.png",110,40)
	btnAprende.x = display.contentWidth/2+90
	btnAprende.y = display.contentHeight/2-240
	
	sceneGroup:insert(btnAprende)
	

	
	local btnmenu = display.newImageRect("imagenes/geolocaliza/btnmenu.png",77,23)
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
		bottomPadding=450,
		horizontalScrollDisabled=true,
		verticalScrollDisabled=false,
		listener=scrollListener,
		backgroundColor={157/255,157/255,156/255},
	}
	
	local sector1_on = display.newImageRect("imagenes/geolocaliza/sector1_on.png",320,90)
sector1_on.x = display.contentWidth/2
sector1_on.y = display.contentHeight/2-215
scrollView:insert(sector1_on)
--sector1_on :addEventListener("touch",sector1_on )

local sector1_off = display.newImageRect("imagenes/geolocaliza/sector1_off.png",320,90)
sector1_off.x = display.contentWidth/2
sector1_off.y = display.contentHeight/2-215
scrollView:insert(sector1_off)
sector1_off.isVisible=false
--sector1_off :addEventListener("touch",sector1_off )

local sector2_on = display.newImageRect("imagenes/geolocaliza/sector2_on.png",320,90)
sector2_on.x = display.contentWidth/2
sector2_on.y = display.contentHeight/2-125
scrollView:insert(sector2_on)
--sector2_on :addEventListener("touch",sector2_on )

local sector2_off = display.newImageRect("imagenes/geolocaliza/sector2_off.png",320,90)
sector2_off.x = display.contentWidth/2
sector2_off.y = display.contentHeight/2-125
scrollView:insert(sector2_off)
sector2_off.isVisible=false
--sector2_off :addEventListener("touch",sector2_off )

local sector3_on = display.newImageRect("imagenes/geolocaliza/sector3_on.png",320,90)
sector3_on.x = display.contentWidth/2
sector3_on.y = display.contentHeight/2-35
scrollView:insert(sector3_on)
--sector3_on :addEventListener("touch",sector3_on )

local sector3_off = display.newImageRect("imagenes/geolocaliza/sector3_off.png",320,90)
sector3_off.x = display.contentWidth/2
sector3_off.y = display.contentHeight/2-35
scrollView:insert(sector3_off)
sector3_off.isVisible=false
--sector3_off :addEventListener("touch",sector3_off )

local sector4_on = display.newImageRect("imagenes/geolocaliza/sector4_on.png",320,90)
sector4_on.x = display.contentWidth/2
sector4_on.y = display.contentHeight/2+55
scrollView:insert(sector4_on)
--sector4_on :addEventListener("touch",sector4_on )

local sector4_off = display.newImageRect("imagenes/geolocaliza/sector4_off.png",320,90)
sector4_off.x = display.contentWidth/2
sector4_off.y = display.contentHeight/2+55
scrollView:insert(sector4_off)
sector4_off.isVisible=false
--sector4_off :addEventListener("touch",sector4_off )

local sector5_on = display.newImageRect("imagenes/geolocaliza/sector5_on.png",320,90)
sector5_on.x = display.contentWidth/2
sector5_on.y = display.contentHeight/2+145
scrollView:insert(sector5_on)
--sector5_on :addEventListener("touch",sector5_on )

local sector5_off = display.newImageRect("imagenes/geolocaliza/sector5_off.png",320,90)
sector5_off.x = display.contentWidth/2
sector5_off.y = display.contentHeight/2+145
scrollView:insert(sector5_off)
sector5_off.isVisible=false
--sector5_off :addEventListener("touch",sector5_off )

local sector6_on = display.newImageRect("imagenes/geolocaliza/sector6_on.png",320,90)
sector6_on.x = display.contentWidth/2
sector6_on.y = display.contentHeight/2+235
scrollView:insert(sector6_on)
--sector6_on :addEventListener("touch",sector6_on )

local sector6_off = display.newImageRect("imagenes/geolocaliza/sector6_off.png",320,90)
sector6_off.x = display.contentWidth/2
sector6_off.y = display.contentHeight/2+235
scrollView:insert(sector6_off)
sector6_off.isVisible=false
--sector6_off :addEventListener("touch",sector6_off )

local sector7_on = display.newImageRect("imagenes/geolocaliza/sector7_on.png",320,90)
sector7_on.x = display.contentWidth/2
sector7_on.y = display.contentHeight/2+325
scrollView:insert(sector7_on)
--sector7_on :addEventListener("touch",sector7_on )

local sector7_off = display.newImageRect("imagenes/geolocaliza/sector7_off.png",320,90)
sector7_off.x = display.contentWidth/2
sector7_off.y = display.contentHeight/2+325
scrollView:insert(sector7_off)
sector7_off.isVisible=false
--sector7_off :addEventListener("touch",sector7_off )

local sector8_on = display.newImageRect("imagenes/geolocaliza/sector8_on.png",320,90)
sector8_on.x = display.contentWidth/2
sector8_on.y = display.contentHeight/2+415
scrollView:insert(sector8_on)
--sector8_on :addEventListener("touch",sector8_on )

local sector8_off = display.newImageRect("imagenes/geolocaliza/sector8_off.png",320,90)
sector8_off.x = display.contentWidth/2
sector8_off.y = display.contentHeight/2+415
scrollView:insert(sector8_off)
sector8_off.isVisible=false
--sector8_off :addEventListener("touch",sector8_off )

local sector9_on = display.newImageRect("imagenes/geolocaliza/sector9_on.png",320,90)
sector9_on.x = display.contentWidth/2
sector9_on.y = display.contentHeight/2+505
scrollView:insert(sector9_on)
--sector9_on :addEventListener("touch",sector9_on )

local sector9_off = display.newImageRect("imagenes/geolocaliza/sector9_off.png",320,90)
sector9_off.x = display.contentWidth/2
sector9_off.y = display.contentHeight/2+505
scrollView:insert(sector9_off)
sector9_off.isVisible=false
--sector9_off :addEventListener("touch",sector9_off )

local sector10_on = display.newImageRect("imagenes/geolocaliza/sector10_on.png",320,90)
sector10_on.x = display.contentWidth/2
sector10_on.y = display.contentHeight/2+595
scrollView:insert(sector10_on)
--sector10_on :addEventListener("touch",sector10_on )

local sector10_off = display.newImageRect("imagenes/geolocaliza/sector10_off.png",320,90)
sector10_off.x = display.contentWidth/2
sector10_off.y = display.contentHeight/2+595
scrollView:insert(sector10_off)
sector10_off.isVisible=false
--sector10_off :addEventListener("touch",sector10_off )

local sector11_on = display.newImageRect("imagenes/geolocaliza/sector11_on.png",320,90)
sector11_on.x = display.contentWidth/2
sector11_on.y = display.contentHeight/2+685
scrollView:insert(sector11_on)
--sector11_on :addEventListener("touch",sector11_on )

local sector11_off = display.newImageRect("imagenes/geolocaliza/sector11_off.png",320,90)
sector11_off.x = display.contentWidth/2
sector11_off.y = display.contentHeight/2+685
scrollView:insert(sector11_off)
sector11_off.isVisible=false
--sector11_off :addEventListener("touch",sector11_off )

local sector12_on = display.newImageRect("imagenes/geolocaliza/sector12_on.png",320,90)
sector12_on.x = display.contentWidth/2
sector12_on.y = display.contentHeight/2+775
scrollView:insert(sector12_on)
--sector12_on :addEventListener("touch",sector12_on )

local sector12_off = display.newImageRect("imagenes/geolocaliza/sector12_off.png",320,90)
sector12_off.x = display.contentWidth/2
sector12_off.y = display.contentHeight/2+775
scrollView:insert(sector12_off)
sector12_off.isVisible=false
--sector12_off :addEventListener("touch",sector12_off )

local sector13_on = display.newImageRect("imagenes/geolocaliza/sector13_on.png",320,90)
sector13_on.x = display.contentWidth/2
sector13_on.y = display.contentHeight/2+865
scrollView:insert(sector13_on)
--sector13_on :addEventListener("touch",sector13_on )

local sector13_off = display.newImageRect("imagenes/geolocaliza/sector13_off.png",320,90)
sector13_off.x = display.contentWidth/2
sector13_off.y = display.contentHeight/2+865
scrollView:insert(sector13_off)
sector13_off.isVisible=false
--sector13_off :addEventListener("touch",sector13_off )

local sector14_on = display.newImageRect("imagenes/geolocaliza/sector14_on.png",320,90)
sector14_on.x = display.contentWidth/2
sector14_on.y = display.contentHeight/2+955
scrollView:insert(sector14_on)
--sector14_on :addEventListener("touch",sector14_on )

local sector14_off = display.newImageRect("imagenes/geolocaliza/sector14_off.png",320,90)
sector14_off.x = display.contentWidth/2
sector14_off.y = display.contentHeight/2+955
scrollView:insert(sector14_off)
sector14_off.isVisible=false
--sector14_off :addEventListener("touch",sector14_off )

local sector15_on = display.newImageRect("imagenes/geolocaliza/sector15_on.png",320,90)
sector15_on.x = display.contentWidth/2
sector15_on.y = display.contentHeight/2+1045
scrollView:insert(sector15_on)
--sector15_on :addEventListener("touch",sector15_on )

local sector15_off = display.newImageRect("imagenes/geolocaliza/sector15_off.png",320,90)
sector15_off.x = display.contentWidth/2
sector15_off.y = display.contentHeight/2+1045
scrollView:insert(sector15_off)
sector15_off.isVisible=false
--sector15_off :addEventListener("touch",sector15_off )

local sector16_on = display.newImageRect("imagenes/geolocaliza/sector16_on.png",320,90)
sector16_on.x = display.contentWidth/2
sector16_on.y = display.contentHeight/2+1135
scrollView:insert(sector16_on)
--sector16_on :addEventListener("touch",sector16_on )

local sector16_off = display.newImageRect("imagenes/geolocaliza/sector16_off.png",320,90)
sector16_off.x = display.contentWidth/2
sector16_off.y = display.contentHeight/2+1135
scrollView:insert(sector16_off)
sector16_off.isVisible=false
--sector16_off :addEventListener("touch",sector16_off )

local sector17_on = display.newImageRect("imagenes/geolocaliza/sector17_on.png",320,90)
sector17_on.x = display.contentWidth/2
sector17_on.y = display.contentHeight/2+1225
scrollView:insert(sector17_on)
--sector17_on :addEventListener("touch",sector17_on )

local sector17_off = display.newImageRect("imagenes/geolocaliza/sector17_off.png",320,90)
sector17_off.x = display.contentWidth/2
sector17_off.y = display.contentHeight/2+1225
scrollView:insert(sector17_off)
sector17_off.isVisible=false
--sector17_off :addEventListener("touch",sector17_off )

local sector18_on = display.newImageRect("imagenes/geolocaliza/sector18_on.png",320,90)
sector18_on.x = display.contentWidth/2
sector18_on.y = display.contentHeight/2+1315
scrollView:insert(sector18_on)
--sector18_on :addEventListener("touch",sector18_on )

local sector18_off = display.newImageRect("imagenes/geolocaliza/sector18_off.png",320,90)
sector18_off.x = display.contentWidth/2
sector18_off.y = display.contentHeight/2+1315
scrollView:insert(sector18_off)
sector18_off.isVisible=false
--sector18_off :addEventListener("touch",sector18_off )m
	

	
	
local sector_lapaz_c1 = display.newImageRect("imagenes/geolocaliza/sector1_lapaz.png",320,50)
sector_lapaz_c1.x = display.contentWidth/2
sector_lapaz_c1.y = display.contentHeight/2-145
scrollView:insert(sector_lapaz_c1)
sector_lapaz_c1.isVisible=false

local sector_oruro_c1 = display.newImageRect("imagenes/geolocaliza/sector1_oruro.png",320,50)
sector_oruro_c1.x = display.contentWidth/2
sector_oruro_c1.y = display.contentHeight/2-95
scrollView:insert(sector_oruro_c1)
sector_oruro_c1.isVisible=false

local sector_potosi_c1 = display.newImageRect("imagenes/geolocaliza/sector1_potosi.png",320,50)
sector_potosi_c1.x = display.contentWidth/2
sector_potosi_c1.y = display.contentHeight/2-45
scrollView:insert(sector_potosi_c1)
sector_potosi_c1.isVisible=false

local sector_cochabamba_c1 = display.newImageRect("imagenes/geolocaliza/sector1_cochabamba.png",320,50)
sector_cochabamba_c1.x = display.contentWidth/2
sector_cochabamba_c1.y = display.contentHeight/2+5
scrollView:insert(sector_cochabamba_c1)
sector_cochabamba_c1.isVisible=false

local sector_santacruz_c1 = display.newImageRect("imagenes/geolocaliza/sector1_santacruz.png",320,50)
sector_santacruz_c1.x = display.contentWidth/2
sector_santacruz_c1.y = display.contentHeight/2+55
scrollView:insert(sector_santacruz_c1)
sector_santacruz_c1.isVisible=false

local sector_beni_c1 = display.newImageRect("imagenes/geolocaliza/sector1_beni.png",320,50)
sector_beni_c1.x = display.contentWidth/2
sector_beni_c1.y = display.contentHeight/2+105
scrollView:insert(sector_beni_c1)
sector_beni_c1.isVisible=false

local sector_pando_c1 = display.newImageRect("imagenes/geolocaliza/sector1_pando.png",320,50)
sector_pando_c1.x = display.contentWidth/2
sector_pando_c1.y = display.contentHeight/2+155
scrollView:insert(sector_pando_c1)
sector_pando_c1.isVisible=false

local sector_tarija_c1 = display.newImageRect("imagenes/geolocaliza/sector1_tarija.png",320,50)
sector_tarija_c1.x = display.contentWidth/2
sector_tarija_c1.y = display.contentHeight/2+205
scrollView:insert(sector_tarija_c1)
sector_tarija_c1.isVisible=false

local sector_chuquisaca_c1 = display.newImageRect("imagenes/geolocaliza/sector1_chuquisaca.png",320,50)
sector_chuquisaca_c1.x = display.contentWidth/2
sector_chuquisaca_c1.y = display.contentHeight/2+255
scrollView:insert(sector_chuquisaca_c1)
sector_chuquisaca_c1.isVisible=false

local sector_lapaz_c2 = display.newImageRect("imagenes/geolocaliza/sector2_lapaz.png",320,50)
sector_lapaz_c2.x = display.contentWidth/2
sector_lapaz_c2.y = display.contentHeight/2-55
scrollView:insert(sector_lapaz_c2)
sector_lapaz_c2.isVisible=false

local sector_oruro_c2 = display.newImageRect("imagenes/geolocaliza/sector2_oruro.png",320,50)
sector_oruro_c2.x = display.contentWidth/2
sector_oruro_c2.y = display.contentHeight/2-5
scrollView:insert(sector_oruro_c2)
sector_oruro_c2.isVisible=false

local sector_potosi_c2 = display.newImageRect("imagenes/geolocaliza/sector2_potosi.png",320,50)
sector_potosi_c2.x = display.contentWidth/2
sector_potosi_c2.y = display.contentHeight/2+45
scrollView:insert(sector_potosi_c2)
sector_potosi_c2.isVisible=false

local sector_cochabamba_c2 = display.newImageRect("imagenes/geolocaliza/sector2_cochabamba.png",320,50)
sector_cochabamba_c2.x = display.contentWidth/2
sector_cochabamba_c2.y = display.contentHeight/2-5
scrollView:insert(sector_cochabamba_c2)
sector_cochabamba_c2.isVisible=false

local sector_santacruz_c2 = display.newImageRect("imagenes/geolocaliza/sector2_santacruz.png",320,50)
sector_santacruz_c2.x = display.contentWidth/2
sector_santacruz_c2.y = display.contentHeight/2+145
scrollView:insert(sector_santacruz_c2)
sector_santacruz_c2.isVisible=false

local sector_beni_c2 = display.newImageRect("imagenes/geolocaliza/sector2_beni.png",320,50)
sector_beni_c2.x = display.contentWidth/2
sector_beni_c2.y = display.contentHeight/2+195
scrollView:insert(sector_beni_c2)
sector_beni_c2.isVisible=false

local sector_pando_c2 = display.newImageRect("imagenes/geolocaliza/sector2_pando.png",320,50)
sector_pando_c2.x = display.contentWidth/2
sector_pando_c2.y = display.contentHeight/2+45
scrollView:insert(sector_pando_c2)
sector_pando_c2.isVisible=false

local sector_tarija_c2 = display.newImageRect("imagenes/geolocaliza/sector2_tarija.png",320,50)
sector_tarija_c2.x = display.contentWidth/2
sector_tarija_c2.y = display.contentHeight/2+295
scrollView:insert(sector_tarija_c2)
sector_tarija_c2.isVisible=false

local sector_chuquisaca_c2 = display.newImageRect("imagenes/geolocaliza/sector2_chuquisaca.png",320,50)
sector_chuquisaca_c2.x = display.contentWidth/2
sector_chuquisaca_c2.y = display.contentHeight/2+95
scrollView:insert(sector_chuquisaca_c2)
sector_chuquisaca_c2.isVisible=false



local sector_lapaz_c3 = display.newImageRect("imagenes/geolocaliza/sector3_lapaz.png",320,50)
sector_lapaz_c3.x = display.contentWidth/2
sector_lapaz_c3.y = display.contentHeight/2+35
scrollView:insert(sector_lapaz_c3)
sector_lapaz_c3.isVisible=false

local sector_oruro_c3 = display.newImageRect("imagenes/geolocaliza/sector3_oruro.png",320,50)
sector_oruro_c3.x = display.contentWidth/2
sector_oruro_c3.y = display.contentHeight/2+85
scrollView:insert(sector_oruro_c3)
sector_oruro_c3.isVisible=false

local sector_potosi_c3 = display.newImageRect("imagenes/geolocaliza/sector3_potosi.png",320,50)
sector_potosi_c3.x = display.contentWidth/2
sector_potosi_c3.y = display.contentHeight/2+135
scrollView:insert(sector_potosi_c3)
sector_potosi_c3.isVisible=false

local sector_cochabamba_c3 = display.newImageRect("imagenes/geolocaliza/sector3_cochabamba.png",320,50)
sector_cochabamba_c3.x = display.contentWidth/2
sector_cochabamba_c3.y = display.contentHeight/2+185
scrollView:insert(sector_cochabamba_c3)
sector_cochabamba_c3.isVisible=false

local sector_santacruz_c3 = display.newImageRect("imagenes/geolocaliza/sector3_santacruz.png",320,50)
sector_santacruz_c3.x = display.contentWidth/2
sector_santacruz_c3.y = display.contentHeight/2+235
scrollView:insert(sector_santacruz_c3)
sector_santacruz_c3.isVisible=false

local sector_beni_c3 = display.newImageRect("imagenes/geolocaliza/sector3_beni.png",320,50)
sector_beni_c3.x = display.contentWidth/2
sector_beni_c3.y = display.contentHeight/2+285
scrollView:insert(sector_beni_c3)
sector_beni_c3.isVisible=false

local sector_pando_c3 = display.newImageRect("imagenes/geolocaliza/sector3_pando.png",320,50)
sector_pando_c3.x = display.contentWidth/2
sector_pando_c3.y = display.contentHeight/2+335
scrollView:insert(sector_pando_c3)
sector_pando_c3.isVisible=false

local sector_tarija_c3 = display.newImageRect("imagenes/geolocaliza/sector3_tarija.png",320,50)
sector_tarija_c3.x = display.contentWidth/2
sector_tarija_c3.y = display.contentHeight/2+385
scrollView:insert(sector_tarija_c3)
sector_tarija_c3.isVisible=false

local sector_chuquisaca_c3 = display.newImageRect("imagenes/geolocaliza/sector3_chuquisaca.png",320,50)
sector_chuquisaca_c3.x = display.contentWidth/2
sector_chuquisaca_c3.y = display.contentHeight/2+435
scrollView:insert(sector_chuquisaca_c3)
sector_chuquisaca_c3.isVisible=false

local sector_lapaz_c4 = display.newImageRect("imagenes/geolocaliza/sector4_lapaz.png",320,50)
sector_lapaz_c4.x = display.contentWidth/2
sector_lapaz_c4.y = display.contentHeight/2+125
scrollView:insert(sector_lapaz_c4)
sector_lapaz_c4.isVisible=false

local sector_oruro_c4 = display.newImageRect("imagenes/geolocaliza/sector4_oruro.png",320,50)
sector_oruro_c4.x = display.contentWidth/2
sector_oruro_c4.y = display.contentHeight/2+175
scrollView:insert(sector_oruro_c4)
sector_oruro_c4.isVisible=false

local sector_potosi_c4 = display.newImageRect("imagenes/geolocaliza/sector4_potosi.png",320,50)
sector_potosi_c4.x = display.contentWidth/2
sector_potosi_c4.y = display.contentHeight/2+225
scrollView:insert(sector_potosi_c4)
sector_potosi_c4.isVisible=false

local sector_cochabamba_c4 = display.newImageRect("imagenes/geolocaliza/sector4_cochabamba.png",320,50)
sector_cochabamba_c4.x = display.contentWidth/2
sector_cochabamba_c4.y = display.contentHeight/2+275
scrollView:insert(sector_cochabamba_c4)
sector_cochabamba_c4.isVisible=false

local sector_santacruz_c4 = display.newImageRect("imagenes/geolocaliza/sector4_santacruz.png",320,50)
sector_santacruz_c4.x = display.contentWidth/2
sector_santacruz_c4.y = display.contentHeight/2+325
scrollView:insert(sector_santacruz_c4)
sector_santacruz_c4.isVisible=false

local sector_beni_c4 = display.newImageRect("imagenes/geolocaliza/sector4_beni.png",320,50)
sector_beni_c4.x = display.contentWidth/2
sector_beni_c4.y = display.contentHeight/2+375
scrollView:insert(sector_beni_c4)
sector_beni_c4.isVisible=false

local sector_pando_c4 = display.newImageRect("imagenes/geolocaliza/sector4_pando.png",320,50)
sector_pando_c4.x = display.contentWidth/2
sector_pando_c4.y = display.contentHeight/2+425
scrollView:insert(sector_pando_c4)
sector_pando_c4.isVisible=false

local sector_tarija_c4 = display.newImageRect("imagenes/geolocaliza/sector4_tarija.png",320,50)
sector_tarija_c4.x = display.contentWidth/2
sector_tarija_c4.y = display.contentHeight/2+475
scrollView:insert(sector_tarija_c4)
sector_tarija_c4.isVisible=false

local sector_chuquisaca_c4 = display.newImageRect("imagenes/geolocaliza/sector4_chuquisaca.png",320,50)
sector_chuquisaca_c4.x = display.contentWidth/2
sector_chuquisaca_c4.y = display.contentHeight/2+525
scrollView:insert(sector_chuquisaca_c4)
sector_chuquisaca_c4.isVisible=false


local sector_lapaz_c5 = display.newImageRect("imagenes/geolocaliza/sector5_lapaz.png",320,50)
sector_lapaz_c5.x = display.contentWidth/2
sector_lapaz_c5.y = display.contentHeight/2+215
scrollView:insert(sector_lapaz_c5)
sector_lapaz_c5.isVisible=false

local sector_oruro_c5 = display.newImageRect("imagenes/geolocaliza/sector5_oruro.png",320,50)
sector_oruro_c5.x = display.contentWidth/2
sector_oruro_c5.y = display.contentHeight/2+265
scrollView:insert(sector_oruro_c5)
sector_oruro_c5.isVisible=false

local sector_potosi_c5 = display.newImageRect("imagenes/geolocaliza/sector5_potosi.png",320,50)
sector_potosi_c5.x = display.contentWidth/2
sector_potosi_c5.y = display.contentHeight/2+315
scrollView:insert(sector_potosi_c5)
sector_potosi_c5.isVisible=false

local sector_cochabamba_c5 = display.newImageRect("imagenes/geolocaliza/sector5_cochabamba.png",320,50)
sector_cochabamba_c5.x = display.contentWidth/2
sector_cochabamba_c5.y = display.contentHeight/2+265
scrollView:insert(sector_cochabamba_c5)
sector_cochabamba_c5.isVisible=false

local sector_santacruz_c5 = display.newImageRect("imagenes/geolocaliza/sector5_santacruz.png",320,50)
sector_santacruz_c5.x = display.contentWidth/2
sector_santacruz_c5.y = display.contentHeight/2+415
scrollView:insert(sector_santacruz_c5)
sector_santacruz_c5.isVisible=false

local sector_beni_c5 = display.newImageRect("imagenes/geolocaliza/sector5_beni.png",320,50)
sector_beni_c5.x = display.contentWidth/2
sector_beni_c5.y = display.contentHeight/2+465
scrollView:insert(sector_beni_c5)
sector_beni_c5.isVisible=false

local sector_pando_c5 = display.newImageRect("imagenes/geolocaliza/sector5_pando.png",320,50)
sector_pando_c5.x = display.contentWidth/2
sector_pando_c5.y = display.contentHeight/2+515
scrollView:insert(sector_pando_c5)
sector_pando_c5.isVisible=false

local sector_tarija_c5 = display.newImageRect("imagenes/geolocaliza/sector5_tarija.png",320,50)
sector_tarija_c5.x = display.contentWidth/2
sector_tarija_c5.y = display.contentHeight/2+315
scrollView:insert(sector_tarija_c5)
sector_tarija_c5.isVisible=false

local sector_chuquisaca_c5 = display.newImageRect("imagenes/geolocaliza/sector5_chuquisaca.png",320,50)
sector_chuquisaca_c5.x = display.contentWidth/2
sector_chuquisaca_c5.y = display.contentHeight/2+615
scrollView:insert(sector_chuquisaca_c5)
sector_chuquisaca_c5.isVisible=false



local bandera=0




function sector1_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector1_on.isVisible=false 
sector1_off.isVisible=true 
sector_lapaz_c1.isVisible=true 
sector_oruro_c1.isVisible=true 
sector_potosi_c1.isVisible=true 
sector_cochabamba_c1.isVisible=true 
sector_santacruz_c1.isVisible=true 
sector_beni_c1.isVisible=true 
sector_pando_c1.isVisible=true 
sector_tarija_c1.isVisible=true 
sector_chuquisaca_c1.isVisible=true 

sector2_on.y = display.contentHeight/2+325
sector3_on.y = display.contentHeight/2+415
sector4_on.y = display.contentHeight/2+505
sector5_on.y = display.contentHeight/2+595
sector6_on.y = display.contentHeight/2+685
sector7_on.y = display.contentHeight/2+775
sector8_on.y = display.contentHeight/2+865
sector9_on.y = display.contentHeight/2+955
sector10_on.y = display.contentHeight/2+1045
sector11_on.y = display.contentHeight/2+1135
sector12_on.y = display.contentHeight/2+1225
sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c1:addEventListener("tap",fsector_lapaz_c1)
sector_cochabamba_c1:addEventListener("tap",fsector_cochabamba_c1)
sector_santacruz_c1:addEventListener("tap",fsector_santacruz_c1)
sector_oruro_c1:addEventListener("tap",fsector_oruro_c1)
sector_potosi_c1:addEventListener("tap",fsector_potosi_c1)
sector_beni_c1:addEventListener("tap",fsector_beni_c1)
sector_pando_c1:addEventListener("tap",fsector_pando_c1)
sector_tarija_c1:addEventListener("tap",fsector_tarija_c1)
sector_chuquisaca_c1:addEventListener("tap",fsector_chuquisaca_c1)
end 

sector1_on :addEventListener("tap",sector1_on )

function fsector_lapaz_c1()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c1() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c1()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c1() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c1() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c1()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c1() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c1()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c1()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector1_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector1_off :tap (event) 
bandera=0; 
sector1_off.isVisible=false 
sector1_on.isVisible=true 
sector_lapaz_c1.isVisible=false 
sector_oruro_c1.isVisible=false 
sector_potosi_c1.isVisible=false 
sector_cochabamba_c1.isVisible=false 
sector_santacruz_c1.isVisible=false 
sector_beni_c1.isVisible=false 
sector_pando_c1.isVisible=false 
sector_tarija_c1.isVisible=false 
sector_chuquisaca_c1.isVisible=false 

sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector1_off :addEventListener("tap",sector1_off ) 



function sector2_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector2_on.isVisible=false 
sector2_off.isVisible=true 

sector_lapaz_c2.isVisible=true 


sector_cochabamba_c2.isVisible=true 

sector_pando_c2.isVisible=true 

sector_chuquisaca_c2.isVisible=true 


sector3_on.y = display.contentHeight/2+165
sector4_on.y = display.contentHeight/2+255
sector5_on.y = display.contentHeight/2+345
sector6_on.y = display.contentHeight/2+435
sector7_on.y = display.contentHeight/2+525
sector8_on.y = display.contentHeight/2+615
sector9_on.y = display.contentHeight/2+705
sector10_on.y = display.contentHeight/2+795
sector11_on.y = display.contentHeight/2+885
sector12_on.y = display.contentHeight/2+975
sector13_on.y = display.contentHeight/2+1065
sector14_on.y = display.contentHeight/2+1155
sector15_on.y = display.contentHeight/2+1245
sector16_on.y = display.contentHeight/2+1335
sector17_on.y = display.contentHeight/2+1425
sector18_on.y = display.contentHeight/2+1515
end 

sector_lapaz_c2:addEventListener("tap",fsector_lapaz_c2)
sector_cochabamba_c2:addEventListener("tap",fsector_cochabamba_c2)

sector_pando_c2:addEventListener("tap",fsector_pando_c2)

sector_chuquisaca_c2:addEventListener("tap",fsector_chuquisaca_c2)
end 

sector2_on :addEventListener("tap",sector2_on )

function fsector_lapaz_c2()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector2_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c2() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector2_d2", { effect = "fade", time = 100 } ) 
end 
end 



function fsector_pando_c2() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector2_d3", { effect = "fade", time = 100 } )
end 
end 



function fsector_chuquisaca_c2()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector2_d4", { effect = "fade", time = 100 } ) 
end 
end 

function sector2_off :tap (event) 
bandera=0; 
sector2_off.isVisible=false 
sector2_on.isVisible=true 
sector_lapaz_c2.isVisible=false 

sector_cochabamba_c2.isVisible=false 

sector_pando_c2.isVisible=false 

sector_chuquisaca_c2.isVisible=false 

sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector2_off :addEventListener("tap",sector2_off ) 



function sector3_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector3_on.isVisible=false 
sector3_off.isVisible=true 
sector_lapaz_c3.isVisible=true 
sector_oruro_c3.isVisible=true 
sector_potosi_c3.isVisible=true 
sector_cochabamba_c3.isVisible=true 
sector_santacruz_c3.isVisible=true 
sector_beni_c3.isVisible=true 
sector_pando_c3.isVisible=true 
sector_tarija_c3.isVisible=true 
sector_chuquisaca_c3.isVisible=true 


sector4_on.y = display.contentHeight/2+505
sector5_on.y = display.contentHeight/2+595
sector6_on.y = display.contentHeight/2+685
sector7_on.y = display.contentHeight/2+775
sector8_on.y = display.contentHeight/2+865
sector9_on.y = display.contentHeight/2+955
sector10_on.y = display.contentHeight/2+1045
sector11_on.y = display.contentHeight/2+1135
sector12_on.y = display.contentHeight/2+1225
sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c3:addEventListener("tap",fsector_lapaz_c3)
sector_cochabamba_c3:addEventListener("tap",fsector_cochabamba_c3)
sector_santacruz_c3:addEventListener("tap",fsector_santacruz_c3)
sector_oruro_c3:addEventListener("tap",fsector_oruro_c3)
sector_potosi_c3:addEventListener("tap",fsector_potosi_c3)
sector_beni_c3:addEventListener("tap",fsector_beni_c3)
sector_pando_c3:addEventListener("tap",fsector_pando_c3)
sector_tarija_c3:addEventListener("tap",fsector_tarija_c3)
sector_chuquisaca_c3:addEventListener("tap",fsector_chuquisaca_c3)
end 

sector3_on :addEventListener("tap",sector3_on )

function fsector_lapaz_c3()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c3() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c3()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c3() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c3() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c3()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c3() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c3()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c3()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector3_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector3_off :tap (event) 
bandera=0; 
sector3_off.isVisible=false 
sector3_on.isVisible=true 
sector_lapaz_c3.isVisible=false 
sector_oruro_c3.isVisible=false 
sector_potosi_c3.isVisible=false 
sector_cochabamba_c3.isVisible=false 
sector_santacruz_c3.isVisible=false 
sector_beni_c3.isVisible=false 
sector_pando_c3.isVisible=false 
sector_tarija_c3.isVisible=false 
sector_chuquisaca_c3.isVisible=false 

sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector3_off :addEventListener("tap",sector3_off ) 



function sector4_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector4_on.isVisible=false 
sector4_off.isVisible=true 
sector_lapaz_c4.isVisible=true 
sector_oruro_c4.isVisible=true 
sector_potosi_c4.isVisible=true 
sector_cochabamba_c4.isVisible=true 
sector_santacruz_c4.isVisible=true 
sector_beni_c4.isVisible=true 
sector_pando_c4.isVisible=true 
sector_tarija_c4.isVisible=true 



sector5_on.y = display.contentHeight/2+545
sector6_on.y = display.contentHeight/2+635
sector7_on.y = display.contentHeight/2+725
sector8_on.y = display.contentHeight/2+815
sector9_on.y = display.contentHeight/2+905
sector10_on.y = display.contentHeight/2+995
sector11_on.y = display.contentHeight/2+1085
sector12_on.y = display.contentHeight/2+1175
sector13_on.y = display.contentHeight/2+1265
sector14_on.y = display.contentHeight/2+1355
sector15_on.y = display.contentHeight/2+1445
sector16_on.y = display.contentHeight/2+1535
sector17_on.y = display.contentHeight/2+1625
sector18_on.y = display.contentHeight/2+1715
end 

sector_lapaz_c4:addEventListener("tap",fsector_lapaz_c4)
sector_cochabamba_c4:addEventListener("tap",fsector_cochabamba_c4)
sector_santacruz_c4:addEventListener("tap",fsector_santacruz_c4)
sector_oruro_c4:addEventListener("tap",fsector_oruro_c4)
sector_potosi_c4:addEventListener("tap",fsector_potosi_c4)
sector_beni_c4:addEventListener("tap",fsector_beni_c4)
sector_pando_c4:addEventListener("tap",fsector_pando_c4)
sector_tarija_c4:addEventListener("tap",fsector_tarija_c4)

end 

sector4_on :addEventListener("tap",sector4_on )

function fsector_lapaz_c4()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c4() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c4()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c4() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c4() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c4()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c4() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c4()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c4()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector4_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector4_off :tap (event) 
bandera=0; 
sector4_off.isVisible=false 
sector4_on.isVisible=true 
sector_lapaz_c4.isVisible=false 
sector_oruro_c4.isVisible=false 
sector_potosi_c4.isVisible=false 
sector_cochabamba_c4.isVisible=false 
sector_santacruz_c4.isVisible=false 
sector_beni_c4.isVisible=false 
sector_pando_c4.isVisible=false 
sector_tarija_c4.isVisible=false 


sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector4_off :addEventListener("tap",sector4_off ) 



function sector5_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector5_on.isVisible=false 
sector5_off.isVisible=true 
sector_lapaz_c5.isVisible=true 
sector_cochabamba_c5.isVisible=true 
sector_tarija_c5.isVisible=true 


sector6_on.y = display.contentHeight/2+385
sector7_on.y = display.contentHeight/2+475
sector8_on.y = display.contentHeight/2+565
sector9_on.y = display.contentHeight/2+655
sector10_on.y = display.contentHeight/2+745
sector11_on.y = display.contentHeight/2+835
sector12_on.y = display.contentHeight/2+925
sector13_on.y = display.contentHeight/2+1015
sector14_on.y = display.contentHeight/2+1105
sector15_on.y = display.contentHeight/2+1195
sector16_on.y = display.contentHeight/2+1285
sector17_on.y = display.contentHeight/2+1375
sector18_on.y = display.contentHeight/2+1465
end 

sector_lapaz_c5:addEventListener("tap",fsector_lapaz_c5)
sector_cochabamba_c5:addEventListener("tap",fsector_cochabamba_c5)
sector_tarija_c5:addEventListener("tap",fsector_tarija_c5)

end 

sector5_on :addEventListener("tap",sector5_on )

function fsector_lapaz_c5()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector5_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c5() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector5_d2", { effect = "fade", time = 100 } ) 
end 
end 

 

function fsector_tarija_c5()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector5_d3", { effect = "fade", time = 100 } ) 
end 
end 



function sector5_off :tap (event) 
bandera=0; 
sector5_off.isVisible=false 
sector5_on.isVisible=true 
sector_lapaz_c5.isVisible=false 

sector_cochabamba_c5.isVisible=false 

sector_tarija_c5.isVisible=false 


sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 

sector5_off :addEventListener("tap",sector5_off ) 



function sector6_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector6_on.isVisible=false 
sector6_off.isVisible=true 
sector_lapaz_c1.isVisible=true 
sector_oruro_c1.isVisible=true 
sector_potosi_c1.isVisible=true 
sector_cochabamba_c1.isVisible=true 
sector_santacruz_c1.isVisible=true 
sector_beni_c1.isVisible=true 
sector_pando_c1.isVisible=true 
sector_tarija_c1.isVisible=true 
sector_chuquisaca_c1.isVisible=true 

sector_lapaz_c1.y = display.contentHeight/2+305
sector_oruro_c1.y = display.contentHeight/2+355
sector_potosi_c1.y = display.contentHeight/2+405 
sector_cochabamba_c1.y = display.contentHeight/2+455
sector_santacruz_c1.y = display.contentHeight/2+505
sector_beni_c1.y = display.contentHeight/2+555
sector_pando_c1.y = display.contentHeight/2+605
sector_tarija_c1.y = display.contentHeight/2+655
sector_chuquisaca_c1.y = display.contentHeight/2+705


sector7_on.y = display.contentHeight/2+775
sector8_on.y = display.contentHeight/2+865
sector9_on.y = display.contentHeight/2+955
sector10_on.y = display.contentHeight/2+1045
sector11_on.y = display.contentHeight/2+1135
sector12_on.y = display.contentHeight/2+1225	
sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c1:addEventListener("tap",fsector_lapaz_c6)
sector_cochabamba_c1:addEventListener("tap",fsector_cochabamba_c6)
sector_santacruz_c1:addEventListener("tap",fsector_santacruz_c6)
sector_oruro_c1:addEventListener("tap",fsector_oruro_c6)
sector_potosi_c1:addEventListener("tap",fsector_potosi_c6)
sector_beni_c1:addEventListener("tap",fsector_beni_c6)
sector_pando_c1:addEventListener("tap",fsector_pando_c6)
sector_tarija_c1:addEventListener("tap",fsector_tarija_c6)
sector_chuquisaca_c1:addEventListener("tap",fsector_chuquisaca_c6)
end 

sector6_on :addEventListener("tap",sector6_on )

function fsector_lapaz_c6()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c6() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c6()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c6() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c6() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c6()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c6() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c6()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c6()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector6_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector6_off :tap (event) 
bandera=0; 
sector6_off.isVisible=false 
sector6_on.isVisible=true 
sector_lapaz_c1.isVisible=false 
sector_oruro_c1.isVisible=false 
sector_potosi_c1.isVisible=false 
sector_cochabamba_c1.isVisible=false 
sector_santacruz_c1.isVisible=false 
sector_beni_c1.isVisible=false 
sector_pando_c1.isVisible=false 
sector_tarija_c1.isVisible=false 
sector_chuquisaca_c1.isVisible=false 

sector_lapaz_c1.y = display.contentHeight/2-145
sector_oruro_c1.y = display.contentHeight/2-95
sector_potosi_c1.y = display.contentHeight/2-45 
sector_cochabamba_c1.y = display.contentHeight/2+5
sector_santacruz_c1.y = display.contentHeight/2+55
sector_beni_c1.y = display.contentHeight/2+105
sector_pando_c1.y = display.contentHeight/2+155
sector_tarija_c1.y = display.contentHeight/2+205
sector_chuquisaca_c1.y = display.contentHeight/2+255


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315




end 
sector6_off :addEventListener("tap",sector6_off ) 



function sector7_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector7_on.isVisible=false 
sector7_off.isVisible=true 
sector_lapaz_c2.isVisible=true 
sector_oruro_c2.isVisible=true 
sector_potosi_c2.isVisible=true 
sector_cochabamba_c2.isVisible=true 
sector_santacruz_c2.isVisible=true 
sector_beni_c2.isVisible=true 
sector_pando_c2.isVisible=true 
sector_tarija_c2.isVisible=true 
sector_chuquisaca_c2.isVisible=true 

sector_lapaz_c2.y = display.contentHeight/2+395
sector_oruro_c2.y = display.contentHeight/2+445
sector_potosi_c2.y = display.contentHeight/2+495 
sector_cochabamba_c2.y = display.contentHeight/2+545
sector_santacruz_c2.y = display.contentHeight/2+595
sector_beni_c2.y = display.contentHeight/2+645
sector_pando_c2.y = display.contentHeight/2+695
sector_tarija_c2.y = display.contentHeight/2+745
sector_chuquisaca_c2.y = display.contentHeight/2+795


sector8_on.y = display.contentHeight/2+865
sector9_on.y = display.contentHeight/2+955
sector10_on.y = display.contentHeight/2+1045
sector11_on.y = display.contentHeight/2+1135
sector12_on.y = display.contentHeight/2+1225
sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c2:addEventListener("tap",fsector_lapaz_c7)
sector_cochabamba_c2:addEventListener("tap",fsector_cochabamba_c7)
sector_santacruz_c2:addEventListener("tap",fsector_santacruz_c7)
sector_oruro_c2:addEventListener("tap",fsector_oruro_c7)
sector_potosi_c2:addEventListener("tap",fsector_potosi_c7)
sector_beni_c2:addEventListener("tap",fsector_beni_c7)
sector_pando_c2:addEventListener("tap",fsector_pando_c7)
sector_tarija_c2:addEventListener("tap",fsector_tarija_c7)
sector_chuquisaca_c2:addEventListener("tap",fsector_chuquisaca_c7)
end 

sector7_on :addEventListener("tap",sector7_on )

function fsector_lapaz_c7()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c7() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c7()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c7() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c7() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c7()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c7() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c7()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c7()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector7_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector7_off :tap (event) 
bandera=0; 

sector7_off.isVisible=false 
sector7_on.isVisible=true 
sector_lapaz_c2.isVisible=false 
sector_oruro_c2.isVisible=false 
sector_potosi_c2.isVisible=false 
sector_cochabamba_c2.isVisible=false 
sector_santacruz_c2.isVisible=false 
sector_beni_c2.isVisible=false 
sector_pando_c2.isVisible=false 
sector_tarija_c2.isVisible=false 
sector_chuquisaca_c2.isVisible=false 


sector_lapaz_c2.y = display.contentHeight/2-55
sector_oruro_c2.y = display.contentHeight/2-5
sector_potosi_c2.y = display.contentHeight/2+45 
sector_cochabamba_c2.y = display.contentHeight/2+95
sector_santacruz_c2.y = display.contentHeight/2+145
sector_beni_c2.y = display.contentHeight/2+195
sector_pando_c2.y = display.contentHeight/2+245
sector_tarija_c2.y = display.contentHeight/2+295
sector_chuquisaca_c2.y = display.contentHeight/2+345


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector7_off :addEventListener("tap",sector7_off ) 



function sector8_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector8_on.isVisible=false 
sector8_off.isVisible=true 
sector_lapaz_c3.isVisible=true 
sector_oruro_c3.isVisible=true 
sector_potosi_c3.isVisible=true 
sector_cochabamba_c3.isVisible=true 
sector_santacruz_c3.isVisible=true 
sector_beni_c3.isVisible=true 
sector_pando_c3.isVisible=true 
sector_tarija_c3.isVisible=true 


sector_lapaz_c3.y = display.contentHeight/2+485
sector_oruro_c3.y = display.contentHeight/2+535
sector_potosi_c3.y = display.contentHeight/2+585 
sector_cochabamba_c3.y = display.contentHeight/2+635
sector_santacruz_c3.y = display.contentHeight/2+685
sector_beni_c3.y = display.contentHeight/2+735
sector_pando_c3.y = display.contentHeight/2+785
sector_tarija_c3.y = display.contentHeight/2+835


 

sector9_on.y = display.contentHeight/2+905
sector10_on.y = display.contentHeight/2+995
sector11_on.y = display.contentHeight/2+1085
sector12_on.y = display.contentHeight/2+1175
sector13_on.y = display.contentHeight/2+1265
sector14_on.y = display.contentHeight/2+1355
sector15_on.y = display.contentHeight/2+1445
sector16_on.y = display.contentHeight/2+1535
sector17_on.y = display.contentHeight/2+1625
sector18_on.y = display.contentHeight/2+1715
end 

sector_lapaz_c3:addEventListener("tap",fsector_lapaz_c8)
sector_cochabamba_c3:addEventListener("tap",fsector_cochabamba_c8)
sector_santacruz_c3:addEventListener("tap",fsector_santacruz_c8)
sector_oruro_c3:addEventListener("tap",fsector_oruro_c8)
sector_potosi_c3:addEventListener("tap",fsector_potosi_c8)
sector_beni_c3:addEventListener("tap",fsector_beni_c8)
sector_pando_c3:addEventListener("tap",fsector_pando_c8)
sector_tarija_c3:addEventListener("tap",fsector_tarija_c8)

end 

sector8_on :addEventListener("tap",sector8_on )

function fsector_lapaz_c8()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c8() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c8()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c8() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c8() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c8()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c8() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c8()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c8()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector8_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector8_off :tap (event) 
bandera=0; 
sector8_off.isVisible=false 
sector8_on.isVisible=true 
sector_lapaz_c3.isVisible=false 
sector_oruro_c3.isVisible=false 
sector_potosi_c3.isVisible=false 
sector_cochabamba_c3.isVisible=false 
sector_santacruz_c3.isVisible=false 
sector_beni_c3.isVisible=false 
sector_pando_c3.isVisible=false 
sector_tarija_c3.isVisible=false 
sector_chuquisaca_c3.isVisible=false 

sector_lapaz_c3.y = display.contentHeight/2+35
sector_oruro_c3.y = display.contentHeight/2+85
sector_potosi_c3.y = display.contentHeight/2+135 
sector_cochabamba_c3.y = display.contentHeight/2+185
sector_santacruz_c3.y = display.contentHeight/2+235
sector_beni_c3.y = display.contentHeight/2+285
sector_pando_c3.y = display.contentHeight/2+335
sector_tarija_c3.y = display.contentHeight/2+385



sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector8_off :addEventListener("tap",sector8_off ) 



function sector9_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector9_on.isVisible=false 
sector9_off.isVisible=true 
sector_lapaz_c4.isVisible=true 
sector_oruro_c4.isVisible=true 
sector_potosi_c4.isVisible=true 
sector_cochabamba_c4.isVisible=true 
sector_santacruz_c4.isVisible=true 
sector_beni_c4.isVisible=true 
sector_pando_c4.isVisible=true 
sector_tarija_c4.isVisible=true 
sector_chuquisaca_c4.isVisible=true 

sector_lapaz_c4.y = display.contentHeight/2+575
sector_oruro_c4.y = display.contentHeight/2+625
sector_potosi_c4.y = display.contentHeight/2+675 
sector_cochabamba_c4.y = display.contentHeight/2+725
sector_santacruz_c4.y = display.contentHeight/2+775
sector_beni_c4.y = display.contentHeight/2+825
sector_pando_c4.y = display.contentHeight/2+875
sector_tarija_c4.y = display.contentHeight/2+925
sector_chuquisaca_c4.y = display.contentHeight/2+975


sector10_on.y = display.contentHeight/2+1045
sector11_on.y = display.contentHeight/2+1135
sector12_on.y = display.contentHeight/2+1225
sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c4:addEventListener("tap",fsector_lapaz_c9)
sector_cochabamba_c4:addEventListener("tap",fsector_cochabamba_c9)
sector_santacruz_c4:addEventListener("tap",fsector_santacruz_c9)
sector_oruro_c4:addEventListener("tap",fsector_oruro_c9)
sector_potosi_c4:addEventListener("tap",fsector_potosi_c9)
sector_beni_c4:addEventListener("tap",fsector_beni_c9)
sector_pando_c4:addEventListener("tap",fsector_pando_c9)
sector_tarija_c4:addEventListener("tap",fsector_tarija_c9)
sector_chuquisaca_c4:addEventListener("tap",fsector_chuquisaca_c9)
end 

sector9_on :addEventListener("tap",sector9_on )

function fsector_lapaz_c9()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c9() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c9()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c9() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c9() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c9()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c9() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c9()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c9()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector9_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector9_off :tap (event) 
bandera=0; 
sector9_off.isVisible=false 
sector9_on.isVisible=true 
sector_lapaz_c4.isVisible=false 
sector_oruro_c4.isVisible=false 
sector_potosi_c4.isVisible=false 
sector_cochabamba_c4.isVisible=false 
sector_santacruz_c4.isVisible=false 
sector_beni_c4.isVisible=false 
sector_pando_c4.isVisible=false 
sector_tarija_c4.isVisible=false 
sector_chuquisaca_c4.isVisible=false 


sector_lapaz_c4.y = display.contentHeight/2+125
sector_oruro_c4.y = display.contentHeight/2+175
sector_potosi_c4.y = display.contentHeight/2+225 
sector_cochabamba_c4.y = display.contentHeight/2+275
sector_santacruz_c4.y = display.contentHeight/2+325
sector_beni_c4.y = display.contentHeight/2+375
sector_pando_c4.y = display.contentHeight/2+425
sector_tarija_c4.y = display.contentHeight/2+475
sector_chuquisaca_c4.y = display.contentHeight/2+525


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector9_off :addEventListener("tap",sector9_off ) 



function sector10_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector10_on.isVisible=false 
sector10_off.isVisible=true 
sector_lapaz_c5.isVisible=true 
sector_oruro_c5.isVisible=true 
sector_potosi_c5.isVisible=true 
sector_cochabamba_c5.isVisible=true 
sector_santacruz_c5.isVisible=true 
sector_beni_c5.isVisible=true 
sector_pando_c5.isVisible=true 
sector_tarija_c5.isVisible=true 
sector_chuquisaca_c5.isVisible=true 

sector_lapaz_c5.y = display.contentHeight/2+665
sector_oruro_c5.y = display.contentHeight/2+715
sector_potosi_c5.y = display.contentHeight/2+765 
sector_cochabamba_c5.y = display.contentHeight/2+815
sector_santacruz_c5.y = display.contentHeight/2+865
sector_beni_c5.y = display.contentHeight/2+915
sector_pando_c5.y = display.contentHeight/2+965
sector_tarija_c5.y = display.contentHeight/2+1015
sector_chuquisaca_c5.y = display.contentHeight/2+1065



sector11_on.y = display.contentHeight/2+1135
sector12_on.y = display.contentHeight/2+1225
sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c5:addEventListener("tap",fsector_lapaz_c10)
sector_cochabamba_c5:addEventListener("tap",fsector_cochabamba_c10)
sector_santacruz_c5:addEventListener("tap",fsector_santacruz_c10)
sector_oruro_c5:addEventListener("tap",fsector_oruro_c10)
sector_potosi_c5:addEventListener("tap",fsector_potosi_c10)
sector_beni_c5:addEventListener("tap",fsector_beni_c10)
sector_pando_c5:addEventListener("tap",fsector_pando_c10)
sector_tarija_c5:addEventListener("tap",fsector_tarija_c10)
sector_chuquisaca_c5:addEventListener("tap",fsector_chuquisaca_c10)
end 

sector10_on :addEventListener("tap",sector10_on )

function fsector_lapaz_c10()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c10() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c10()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c10() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c10() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c10()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c10() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c10()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c10()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector10_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector10_off :tap (event) 
bandera=0; 
sector10_off.isVisible=false 
sector10_on.isVisible=true 
sector_lapaz_c5.isVisible=false 
sector_oruro_c5.isVisible=false 
sector_potosi_c5.isVisible=false 
sector_cochabamba_c5.isVisible=false 
sector_santacruz_c5.isVisible=false 
sector_beni_c5.isVisible=false 
sector_pando_c5.isVisible=false 
sector_tarija_c5.isVisible=false 
sector_chuquisaca_c5.isVisible=false 


sector_lapaz_c5.y = display.contentHeight/2+215
sector_oruro_c5.y = display.contentHeight/2+265
sector_potosi_c5.y = display.contentHeight/2+315 
sector_cochabamba_c5.y = display.contentHeight/2+365
sector_santacruz_c5.y = display.contentHeight/2+415
sector_beni_c5.y = display.contentHeight/2+465
sector_pando_c5.y = display.contentHeight/2+515
sector_tarija_c5.y = display.contentHeight/2+565
sector_chuquisaca_c5.y = display.contentHeight/2+615



sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector10_off :addEventListener("tap",sector10_off ) 



function sector11_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector11_on.isVisible=false 
sector11_off.isVisible=true 
sector_lapaz_c1.isVisible=true 
sector_oruro_c1.isVisible=true 
sector_potosi_c1.isVisible=true 
sector_cochabamba_c1.isVisible=true 
sector_santacruz_c1.isVisible=true 
 
sector_tarija_c1.isVisible=true 


sector_lapaz_c1.y = display.contentHeight/2+755
sector_oruro_c1.y = display.contentHeight/2+805
sector_potosi_c1.y = display.contentHeight/2+855 
sector_cochabamba_c1.y = display.contentHeight/2+905
sector_santacruz_c1.y = display.contentHeight/2+955

sector_tarija_c1.y = display.contentHeight/2+1005




sector12_on.y = display.contentHeight/2+1075
sector13_on.y = display.contentHeight/2+1165
sector14_on.y = display.contentHeight/2+1255
sector15_on.y = display.contentHeight/2+1345
sector16_on.y = display.contentHeight/2+1435
sector17_on.y = display.contentHeight/2+1525
sector18_on.y = display.contentHeight/2+1615
end 

sector_lapaz_c1:addEventListener("tap",fsector_lapaz_c11)
sector_cochabamba_c1:addEventListener("tap",fsector_cochabamba_c11)
sector_santacruz_c1:addEventListener("tap",fsector_santacruz_c11)
sector_oruro_c1:addEventListener("tap",fsector_oruro_c11)
sector_potosi_c1:addEventListener("tap",fsector_potosi_c11)

sector_tarija_c1:addEventListener("tap",fsector_tarija_c11)

end 

sector11_on :addEventListener("tap",sector11_on )

function fsector_lapaz_c11()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c11() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c11()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c11() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c11() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c11()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c11() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c11()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c11()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector11_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector11_off :tap (event) 
bandera=0; 
sector11_off.isVisible=false 
sector11_on.isVisible=true 
sector_lapaz_c1.isVisible=false 
sector_oruro_c1.isVisible=false 
sector_potosi_c1.isVisible=false 
sector_cochabamba_c1.isVisible=false 
sector_santacruz_c1.isVisible=false 
sector_beni_c1.isVisible=false 
sector_pando_c1.isVisible=false 
sector_tarija_c1.isVisible=false 
sector_chuquisaca_c1.isVisible=false 

sector_lapaz_c1.y = display.contentHeight/2-145
sector_oruro_c1.y = display.contentHeight/2-95
sector_potosi_c1.y = display.contentHeight/2-45 
sector_cochabamba_c1.y = display.contentHeight/2+5
sector_santacruz_c1.y = display.contentHeight/2+55
sector_beni_c1.y = display.contentHeight/2+105
sector_pando_c1.y = display.contentHeight/2+155
sector_tarija_c1.y = display.contentHeight/2+205
sector_chuquisaca_c1.y = display.contentHeight/2+255


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector11_off :addEventListener("tap",sector11_off ) 



function sector12_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector12_on.isVisible=false 
sector12_off.isVisible=true 
sector_lapaz_c2.isVisible=true 
sector_oruro_c2.isVisible=true 
sector_potosi_c2.isVisible=true 
sector_cochabamba_c2.isVisible=true 
sector_santacruz_c2.isVisible=true 
sector_beni_c2.isVisible=true 
sector_pando_c2.isVisible=true 
sector_tarija_c2.isVisible=true 
sector_chuquisaca_c2.isVisible=true 

sector_lapaz_c2.y = display.contentHeight/2+845
sector_oruro_c2.y = display.contentHeight/2+895
sector_potosi_c2.y = display.contentHeight/2+945 
sector_cochabamba_c2.y = display.contentHeight/2+995
sector_santacruz_c2.y = display.contentHeight/2+1045
sector_beni_c2.y = display.contentHeight/2+1095
sector_pando_c2.y = display.contentHeight/2+1145
sector_tarija_c2.y = display.contentHeight/2+1195
sector_chuquisaca_c2.y = display.contentHeight/2+1245


sector13_on.y = display.contentHeight/2+1315
sector14_on.y = display.contentHeight/2+1405
sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c2:addEventListener("tap",fsector_lapaz_c12)
sector_cochabamba_c2:addEventListener("tap",fsector_cochabamba_c12)
sector_santacruz_c2:addEventListener("tap",fsector_santacruz_c12)
sector_oruro_c2:addEventListener("tap",fsector_oruro_c12)
sector_potosi_c2:addEventListener("tap",fsector_potosi_c12)
sector_beni_c2:addEventListener("tap",fsector_beni_c12)
sector_pando_c2:addEventListener("tap",fsector_pando_c12)
sector_tarija_c2:addEventListener("tap",fsector_tarija_c12)
sector_chuquisaca_c2:addEventListener("tap",fsector_chuquisaca_c12)
end 

sector12_on :addEventListener("tap",sector12_on )

function fsector_lapaz_c12()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c12() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c12()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c12() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c12() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c12()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c12() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c12()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c12()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector12_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector12_off :tap (event) 
bandera=0; 
sector12_off.isVisible=false 
sector12_on.isVisible=true 
sector_lapaz_c2.isVisible=false 
sector_oruro_c2.isVisible=false 
sector_potosi_c2.isVisible=false 
sector_cochabamba_c2.isVisible=false 
sector_santacruz_c2.isVisible=false 
sector_beni_c2.isVisible=false 
sector_pando_c2.isVisible=false 
sector_tarija_c2.isVisible=false 
sector_chuquisaca_c2.isVisible=false 


sector_lapaz_c2.y = display.contentHeight/2-55
sector_oruro_c2.y = display.contentHeight/2-5
sector_potosi_c2.y = display.contentHeight/2+45 
sector_cochabamba_c2.y = display.contentHeight/2+95
sector_santacruz_c2.y = display.contentHeight/2+145
sector_beni_c2.y = display.contentHeight/2+195
sector_pando_c2.y = display.contentHeight/2+245
sector_tarija_c2.y = display.contentHeight/2+295
sector_chuquisaca_c2.y = display.contentHeight/2+345



sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector12_off :addEventListener("tap",sector12_off ) 



function sector13_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector13_on.isVisible=false 
sector13_off.isVisible=true 


sector_lapaz_c3.isVisible=true 
sector_oruro_c3.isVisible=true 
sector_potosi_c3.isVisible=true 
sector_cochabamba_c3.isVisible=true 
sector_santacruz_c3.isVisible=true 
sector_beni_c3.isVisible=true 

sector_tarija_c3.isVisible=true 
sector_chuquisaca_c3.isVisible=true 

sector_lapaz_c3.y = display.contentHeight/2+935
sector_oruro_c3.y = display.contentHeight/2+985
sector_potosi_c3.y = display.contentHeight/2+1035 
sector_cochabamba_c3.y = display.contentHeight/2+1085
sector_santacruz_c3.y = display.contentHeight/2+1135
sector_beni_c3.y = display.contentHeight/2+1185

sector_tarija_c3.y = display.contentHeight/2+1235
sector_chuquisaca_c3.y = display.contentHeight/2+1280


sector14_on.y = display.contentHeight/2+1350
sector15_on.y = display.contentHeight/2+1440
sector16_on.y = display.contentHeight/2+1530
sector17_on.y = display.contentHeight/2+1620
sector18_on.y = display.contentHeight/2+1710
end 

sector_lapaz_c3:addEventListener("tap",fsector_lapaz_c13)
sector_cochabamba_c3:addEventListener("tap",fsector_cochabamba_c13)
sector_santacruz_c3:addEventListener("tap",fsector_santacruz_c13)
sector_oruro_c3:addEventListener("tap",fsector_oruro_c13)
sector_potosi_c3:addEventListener("tap",fsector_potosi_c13)
sector_beni_c3:addEventListener("tap",fsector_beni_c13)

sector_tarija_c3:addEventListener("tap",fsector_tarija_c13)
sector_chuquisaca_c3:addEventListener("tap",fsector_chuquisaca_c13)
end 

sector13_on :addEventListener("tap",sector13_on )

function fsector_lapaz_c13()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c13() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c13()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c13() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c13() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c13()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c13() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c13()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d7", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c13()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector13_d8", { effect = "fade", time = 100 } ) 
end 
end 

function sector13_off :tap (event) 
bandera=0; 
sector13_off.isVisible=false 
sector13_on.isVisible=true 
sector_lapaz_c3.isVisible=false 
sector_oruro_c3.isVisible=false 
sector_potosi_c3.isVisible=false 
sector_cochabamba_c3.isVisible=false 
sector_santacruz_c3.isVisible=false 
sector_beni_c3.isVisible=false 
sector_pando_c3.isVisible=false 
sector_tarija_c3.isVisible=false 
sector_chuquisaca_c3.isVisible=false 

sector_lapaz_c3.y = display.contentHeight/2+35
sector_oruro_c3.y = display.contentHeight/2+85
sector_potosi_c3.y = display.contentHeight/2+135 
sector_cochabamba_c3.y = display.contentHeight/2+185
sector_santacruz_c3.y = display.contentHeight/2+235
sector_beni_c3.y = display.contentHeight/2+285
sector_pando_c3.y = display.contentHeight/2+335
sector_tarija_c3.y = display.contentHeight/2+385
sector_chuquisaca_c3.y = display.contentHeight/2+435


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector13_off :addEventListener("tap",sector13_off ) 



function sector14_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector14_on.isVisible=false 
sector14_off.isVisible=true 
sector_lapaz_c4.isVisible=true 
sector_oruro_c4.isVisible=true 
sector_potosi_c4.isVisible=true 
sector_cochabamba_c4.isVisible=true 
sector_santacruz_c4.isVisible=true 
sector_beni_c4.isVisible=true 
sector_pando_c4.isVisible=true 
sector_tarija_c4.isVisible=true 
sector_chuquisaca_c4.isVisible=true 

sector_lapaz_c4.y = display.contentHeight/2+1025
sector_oruro_c4.y = display.contentHeight/2+1075
sector_potosi_c4.y = display.contentHeight/2+1125 
sector_cochabamba_c4.y = display.contentHeight/2+1175
sector_santacruz_c4.y = display.contentHeight/2+1225
sector_beni_c4.y = display.contentHeight/2+1275
sector_pando_c4.y = display.contentHeight/2+1325
sector_tarija_c4.y = display.contentHeight/2+1375
sector_chuquisaca_c4.y = display.contentHeight/2+1425



sector15_on.y = display.contentHeight/2+1495
sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c4:addEventListener("tap",fsector_lapaz_c14)
sector_cochabamba_c4:addEventListener("tap",fsector_cochabamba_c14)
sector_santacruz_c4:addEventListener("tap",fsector_santacruz_c14)
sector_oruro_c4:addEventListener("tap",fsector_oruro_c14)
sector_potosi_c4:addEventListener("tap",fsector_potosi_c14)
sector_beni_c4:addEventListener("tap",fsector_beni_c14)
sector_pando_c4:addEventListener("tap",fsector_pando_c14)
sector_tarija_c4:addEventListener("tap",fsector_tarija_c14)
sector_chuquisaca_c4:addEventListener("tap",fsector_chuquisaca_c14)
end 

sector14_on :addEventListener("tap",sector14_on )

function fsector_lapaz_c14()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c14() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c14()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c14() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c14() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c14()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c14() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c14()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c14()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector14_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector14_off :tap (event) 
bandera=0; 
sector14_off.isVisible=false 
sector14_on.isVisible=true 
sector_lapaz_c4.isVisible=false 
sector_oruro_c4.isVisible=false 
sector_potosi_c4.isVisible=false 
sector_cochabamba_c4.isVisible=false 
sector_santacruz_c4.isVisible=false 
sector_beni_c4.isVisible=false 
sector_pando_c4.isVisible=false 
sector_tarija_c4.isVisible=false 
sector_chuquisaca_c4.isVisible=false 


sector_lapaz_c4.y = display.contentHeight/2+125
sector_oruro_c4.y = display.contentHeight/2+175
sector_potosi_c4.y = display.contentHeight/2+225 
sector_cochabamba_c4.y = display.contentHeight/2+275
sector_santacruz_c4.y = display.contentHeight/2+325
sector_beni_c4.y = display.contentHeight/2+375
sector_pando_c4.y = display.contentHeight/2+425
sector_tarija_c4.y = display.contentHeight/2+475
sector_chuquisaca_c4.y = display.contentHeight/2+525


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector14_off :addEventListener("tap",sector14_off ) 



function sector15_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector15_on.isVisible=false 
sector15_off.isVisible=true 
sector_lapaz_c5.isVisible=true 
sector_oruro_c5.isVisible=true 
sector_potosi_c5.isVisible=true 
sector_cochabamba_c5.isVisible=true 
sector_santacruz_c5.isVisible=true 
sector_beni_c5.isVisible=true 
sector_pando_c5.isVisible=true 
sector_tarija_c5.isVisible=true 
sector_chuquisaca_c5.isVisible=true 

sector_lapaz_c5.y = display.contentHeight/2+1115
sector_oruro_c5.y = display.contentHeight/2+1165
sector_potosi_c5.y = display.contentHeight/2+1215 
sector_cochabamba_c5.y = display.contentHeight/2+1265
sector_santacruz_c5.y = display.contentHeight/2+1315
sector_beni_c5.y = display.contentHeight/2+1365
sector_pando_c5.y = display.contentHeight/2+1415
sector_tarija_c5.y = display.contentHeight/2+1465
sector_chuquisaca_c5.y = display.contentHeight/2+1515



sector16_on.y = display.contentHeight/2+1585
sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765


end 

sector_lapaz_c5:addEventListener("tap",fsector_lapaz_c15)
sector_cochabamba_c5:addEventListener("tap",fsector_cochabamba_c15)
sector_santacruz_c5:addEventListener("tap",fsector_santacruz_c15)
sector_oruro_c5:addEventListener("tap",fsector_oruro_c15)
sector_potosi_c5:addEventListener("tap",fsector_potosi_c15)
sector_beni_c5:addEventListener("tap",fsector_beni_c15)
sector_pando_c5:addEventListener("tap",fsector_pando_c15)
sector_tarija_c5:addEventListener("tap",fsector_tarija_c15)
sector_chuquisaca_c5:addEventListener("tap",fsector_chuquisaca_c15)
end 

sector15_on :addEventListener("tap",sector15_on )

function fsector_lapaz_c15()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c15() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c15()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c15() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c15() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c15()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c15() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c15()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c15()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector15_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector15_off :tap (event) 
bandera=0; 
sector15_off.isVisible=false 
sector15_on.isVisible=true 
sector_lapaz_c5.isVisible=false 
sector_oruro_c5.isVisible=false 
sector_potosi_c5.isVisible=false 
sector_cochabamba_c5.isVisible=false 
sector_santacruz_c5.isVisible=false 
sector_beni_c5.isVisible=false 
sector_pando_c5.isVisible=false 
sector_tarija_c5.isVisible=false 
sector_chuquisaca_c5.isVisible=false 

sector_lapaz_c5.y = display.contentHeight/2+215
sector_oruro_c5.y = display.contentHeight/2+265
sector_potosi_c5.y = display.contentHeight/2+315 
sector_cochabamba_c5.y = display.contentHeight/2+365
sector_santacruz_c5.y = display.contentHeight/2+415
sector_beni_c5.y = display.contentHeight/2+465
sector_pando_c5.y = display.contentHeight/2+515
sector_tarija_c5.y = display.contentHeight/2+565
sector_chuquisaca_c5.y = display.contentHeight/2+615


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector15_off :addEventListener("tap",sector15_off ) 



function sector16_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector16_on.isVisible=false 
sector16_off.isVisible=true 
sector_lapaz_c1.isVisible=true 
sector_oruro_c1.isVisible=true 
sector_potosi_c1.isVisible=true 
sector_cochabamba_c1.isVisible=true 
sector_santacruz_c1.isVisible=true 
sector_beni_c1.isVisible=true 
sector_pando_c1.isVisible=true 
sector_tarija_c1.isVisible=true 
sector_chuquisaca_c1.isVisible=true 

sector_lapaz_c1.y = display.contentHeight/2+1205
sector_oruro_c1.y = display.contentHeight/2+1255
sector_potosi_c1.y = display.contentHeight/2+1305 
sector_cochabamba_c1.y = display.contentHeight/2+1355
sector_santacruz_c1.y = display.contentHeight/2+1405
sector_beni_c1.y = display.contentHeight/2+1455
sector_pando_c1.y = display.contentHeight/2+1505
sector_tarija_c1.y = display.contentHeight/2+1555
sector_chuquisaca_c1.y = display.contentHeight/2+1605


sector17_on.y = display.contentHeight/2+1675
sector18_on.y = display.contentHeight/2+1765
end 

sector_lapaz_c1:addEventListener("tap",fsector_lapaz_c16)
sector_cochabamba_c1:addEventListener("tap",fsector_cochabamba_c16)
sector_santacruz_c1:addEventListener("tap",fsector_santacruz_c16)
sector_oruro_c1:addEventListener("tap",fsector_oruro_c16)
sector_potosi_c1:addEventListener("tap",fsector_potosi_c16)
sector_beni_c1:addEventListener("tap",fsector_beni_c16)
sector_pando_c1:addEventListener("tap",fsector_pando_c16)
sector_tarija_c1:addEventListener("tap",fsector_tarija_c16)
sector_chuquisaca_c1:addEventListener("tap",fsector_chuquisaca_c16)
end 

sector16_on :addEventListener("tap",sector16_on )

function fsector_lapaz_c16()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c16() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c16()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c16() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c16() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c16()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c16() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c16()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c16()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector16_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector16_off :tap (event) 
bandera=0; 
sector16_off.isVisible=false 
sector16_on.isVisible=true 
sector_lapaz_c1.isVisible=false 
sector_oruro_c1.isVisible=false 
sector_potosi_c1.isVisible=false 
sector_cochabamba_c1.isVisible=false 
sector_santacruz_c1.isVisible=false 
sector_beni_c1.isVisible=false 
sector_pando_c1.isVisible=false 
sector_tarija_c1.isVisible=false 
sector_chuquisaca_c1.isVisible=false 

sector_lapaz_c1.y = display.contentHeight/2-145
sector_oruro_c1.y = display.contentHeight/2-95
sector_potosi_c1.y = display.contentHeight/2-45 
sector_cochabamba_c1.y = display.contentHeight/2+5
sector_santacruz_c1.y = display.contentHeight/2+55
sector_beni_c1.y = display.contentHeight/2+105
sector_pando_c1.y = display.contentHeight/2+155
sector_tarija_c1.y = display.contentHeight/2+205
sector_chuquisaca_c1.y = display.contentHeight/2+255


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector16_off :addEventListener("tap",sector16_off ) 



function sector17_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector17_on.isVisible=false 
sector17_off.isVisible=true 

sector_potosi_c2.isVisible=true 
sector_cochabamba_c2.isVisible=true 
sector_santacruz_c2.isVisible=true 



sector_potosi_c2.y = display.contentHeight/2+1295
sector_cochabamba_c2.y = display.contentHeight/2+1345
sector_santacruz_c2.y = display.contentHeight/2+1395




sector18_on.y = display.contentHeight/2+1465
end 


sector_cochabamba_c2:addEventListener("tap",fsector_cochabamba_c17)
sector_santacruz_c2:addEventListener("tap",fsector_santacruz_c17)

sector_potosi_c2:addEventListener("tap",fsector_potosi_c17)

end 

sector17_on :addEventListener("tap",sector17_on )

function fsector_lapaz_c17()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c17() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c17()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c17() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c17() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d1", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c17()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c17() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c17()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c17()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector17_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector17_off :tap (event) 
bandera=0; 
sector17_off.isVisible=false 
sector17_on.isVisible=true 
sector_lapaz_c2.isVisible=false 
sector_oruro_c2.isVisible=false 
sector_potosi_c2.isVisible=false 
sector_cochabamba_c2.isVisible=false 
sector_santacruz_c2.isVisible=false 
sector_beni_c2.isVisible=false 
sector_pando_c2.isVisible=false 
sector_tarija_c2.isVisible=false 
sector_chuquisaca_c2.isVisible=false 

sector_lapaz_c2.y = display.contentHeight/2-55
sector_oruro_c2.y = display.contentHeight/2-5
sector_potosi_c2.y = display.contentHeight/2+45 
sector_cochabamba_c2.y = display.contentHeight/2+95
sector_santacruz_c2.y = display.contentHeight/2+145
sector_beni_c2.y = display.contentHeight/2+195
sector_pando_c2.y = display.contentHeight/2+245
sector_tarija_c2.y = display.contentHeight/2+295
sector_chuquisaca_c2.y = display.contentHeight/2+345


sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector17_off :addEventListener("tap",sector17_off ) 



function sector18_on :tap (event)
bandera=bandera+1;
if(bandera==1) then
sector18_on.isVisible=false 
sector18_off.isVisible=true 
sector_lapaz_c3.isVisible=true 
sector_oruro_c3.isVisible=true 
sector_potosi_c3.isVisible=true 
sector_cochabamba_c3.isVisible=true 
sector_santacruz_c3.isVisible=true 
sector_beni_c3.isVisible=true 
sector_pando_c3.isVisible=true 
sector_tarija_c3.isVisible=true 
sector_chuquisaca_c3.isVisible=true 

sector_lapaz_c3.y = display.contentHeight/2+1385
sector_oruro_c3.y = display.contentHeight/2+1435
sector_potosi_c3.y = display.contentHeight/2+1485
sector_cochabamba_c3.y = display.contentHeight/2+1535
sector_santacruz_c3.y = display.contentHeight/2+1585
sector_beni_c3.y = display.contentHeight/2+1635
sector_pando_c3.y = display.contentHeight/2+1685
sector_tarija_c3.y = display.contentHeight/2+1735
sector_chuquisaca_c3.y = display.contentHeight/2+1785



end 

sector_lapaz_c3:addEventListener("tap",fsector_lapaz_c18)
sector_cochabamba_c3:addEventListener("tap",fsector_cochabamba_c18)
sector_santacruz_c3:addEventListener("tap",fsector_santacruz_c18)
sector_oruro_c3:addEventListener("tap",fsector_oruro_c18)
sector_potosi_c3:addEventListener("tap",fsector_potosi_c18)
sector_beni_c3:addEventListener("tap",fsector_beni_c18)
sector_pando_c3:addEventListener("tap",fsector_pando_c18)
sector_tarija_c3:addEventListener("tap",fsector_tarija_c18)
sector_chuquisaca_c3:addEventListener("tap",fsector_chuquisaca_c18)
end 

sector18_on :addEventListener("tap",sector18_on )

function fsector_lapaz_c18()
if scrollView then
scrollView:removeSelf()
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d1", { effect = "fade", time = 100 } ) 
end 
end

function fsector_cochabamba_c18() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d4", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_santacruz_c18()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d5", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_oruro_c18() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d2", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_potosi_c18() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d3", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_beni_c18()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d6", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_pando_c18() 
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d7", { effect = "fade", time = 100 } )
end 
end 

function fsector_tarija_c18()	
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d8", { effect = "fade", time = 100 } ) 
end 
end 

function fsector_chuquisaca_c18()
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("sector18_d9", { effect = "fade", time = 100 } ) 
end 
end 

function sector18_off :tap (event) 
bandera=0; 
sector18_off.isVisible=false 
sector18_on.isVisible=true 
sector_lapaz_c3.isVisible=false 
sector_oruro_c3.isVisible=false 
sector_potosi_c3.isVisible=false 
sector_cochabamba_c3.isVisible=false 
sector_santacruz_c3.isVisible=false 
sector_beni_c3.isVisible=false 
sector_pando_c3.isVisible=false 
sector_tarija_c3.isVisible=false 
sector_chuquisaca_c3.isVisible=false 

sector_lapaz_c3.y = display.contentHeight/2+35
sector_oruro_c3.y = display.contentHeight/2+85
sector_potosi_c3.y = display.contentHeight/2+135
sector_cochabamba_c3.y = display.contentHeight/2+185
sector_santacruz_c3.y = display.contentHeight/2+235
sector_beni_c3.y = display.contentHeight/2+285
sector_pando_c3.y = display.contentHeight/2+335
sector_tarija_c3.y = display.contentHeight/2+385
sector_chuquisaca_c3.y = display.contentHeight/2+435



sector2_on.y = display.contentHeight/2-125
sector3_on.y = display.contentHeight/2-35
sector4_on.y = display.contentHeight/2+55
sector5_on.y = display.contentHeight/2+145
sector6_on.y = display.contentHeight/2+235
sector7_on.y = display.contentHeight/2+325
sector8_on.y = display.contentHeight/2+415
sector9_on.y = display.contentHeight/2+505
sector10_on.y = display.contentHeight/2+595
sector11_on.y = display.contentHeight/2+685
sector12_on.y = display.contentHeight/2+775
sector13_on.y = display.contentHeight/2+865
sector14_on.y = display.contentHeight/2+955
sector15_on.y = display.contentHeight/2+1045
sector16_on.y = display.contentHeight/2+1135
sector17_on.y = display.contentHeight/2+1225
sector18_on.y = display.contentHeight/2+1315
end 
sector18_off :addEventListener("tap",sector18_off ) 

function irPrincipal()
		
if scrollView then 
scrollView:removeSelf()	 
scrollView = nil 
composer.removeScene("geolocaliza",false) 
composer.gotoScene("principal", { effect = "fade", time = 100 } ) 
end 
	
end 

btnAprende:addEventListener("touch",irPrincipal)




 local function onKeyEvent( event )
    local keyname = event.keyName;
    if (event.phase == "up" and (event.keyName=="back" or event.keyName=="menu")) then
            if keyname == "menu" then
            	goToMenuScreen()
            elseif keyname == "back" then
			
				if scrollView then 
				scrollView:removeSelf() 
				scrollView = nil 
				composer.removeScene("geolocaliza",false) 
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