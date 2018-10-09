local composer = require( "composer" )
 
local scene = composer.newScene()

local widget = require( "widget" )
 
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
	
		local btnPilares = display.newImageRect("imagenes/metas/btnpilares.png",100,50)
	btnPilares.x = display.contentWidth/2+110
	btnPilares.y = display.contentHeight/2-240
	
	sceneGroup:insert(btnPilares)
	

	
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
		topPadding = 80,
		bottomPadding=20,
		horizontalScrollDisabled=true,
		verticalScrollDisabled=false,
		listener=scrollListener,
		backgroundColor={255/255,255/255,255/255},
	}
	
	
	local meta = display.newImageRect("imagenes/metas/1_pilar_meta3.png",320,1000)
meta.x = display.contentWidth/2
meta.y = display.contentHeight/2+180

scrollView:insert(meta)

			local flecha_atras = widget.newButton(
			{
				width = 25,
				height = 50,
				defaultFile = 'imagenes/metas/flecha_atras.png',
				overFile = 'imagenes/metas/flecha_atras.png',
				onEvent = funcion_flecha_adelante
			}
		)
		
				flecha_atras.x = display.contentWidth/2-145 
		flecha_atras.y = display.contentHeight/2-130
		
		scrollView:insert(flecha_atras)
		
		


function irEscenaPilares()
	
	if scrollView then 
	scrollView:removeSelf() 
	scrollView = nil
	composer.removeScene('p1_d2_m3',false) 
	composer.gotoScene("pilares", { effect = "fade", time = 100 } )
	end 
end

btnPilares:addEventListener("touch",irEscenaPilares)


function funcion_flecha_atras()
	
	if scrollView then 
	scrollView:removeSelf() 
	scrollView = nil
	composer.removeScene('p1_d2_m3',false) 
	composer.gotoScene("p1_d2_m2", { effect = "fade", time = 100 } )
	end 
end

flecha_atras:addEventListener("touch",funcion_flecha_atras)	
	
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