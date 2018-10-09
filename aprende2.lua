local composer = require( "composer" )
 
local scene = composer.newScene()

local widget = require( "widget" )

display.setStatusBar(display.HiddenStatusBar)


local function irEscenaAprende3()

composer.gotoScene( "aprende3", { effect = "slideLeft", time = 600 } )

end

local function irEscenaAprende1()

composer.gotoScene( "aprende1", { effect = "slideRight", time = 600 } )

end

local function irEscenaPilares()

composer.gotoScene( "pilares", { effect = "fade", time = 100 } )

end




 
function scene:create( event )
 
    local sceneGroup = self.view
	
	
	local aprendePantalla1 = display.newImageRect("src/aprende/aprende2.jpg",320,570)
	
	aprendePantalla1.x = display.contentWidth/2
	aprendePantalla1.y = display.contentHeight/2
	
	sceneGroup:insert(aprendePantalla1)
	
	
	local punto1_aprende = display.newImageRect("src/aprende/punto2_aprende.png",78,30)
	punto1_aprende.x= display.contentWidth/2
	punto1_aprende.y = display.contentHeight/2+200
	
	sceneGroup:insert(punto1_aprende)
	
	
	local invisibleIzquierda = display.newImageRect("src/aprende/invisible.png",160,570)
	
	invisibleIzquierda.x = display.contentWidth-240
	invisibleIzquierda.y = display.contentHeight/2
	
	sceneGroup:insert(invisibleIzquierda)
	invisibleIzquierda:addEventListener("touch",irEscenaAprende1)
	
	
	local invisibleDerecha = display.newImageRect("src/aprende/invisible.png",160,570)
	
	invisibleDerecha.x = display.contentWidth-80
	invisibleDerecha.y = display.contentHeight/2
	
	sceneGroup:insert(invisibleDerecha)
	
	invisibleDerecha:addEventListener("touch",irEscenaAprende3)
	
	local btnOmitir = widget.newButton(
			{
				width = 150,
				height = 40,
				defaultFile = "src/aprende/btnOmitir.png",
				overFile = "src/aprende/btnOmitir_press.png",
				onEvent = btnAprendePrincipal
			}
		)
		 
		-- Center the button
		btnOmitir.x =display.contentWidth/2+80
		btnOmitir.y =display.contentHeight/2+240
		
		sceneGroup:insert(btnOmitir)
		
	btnOmitir:addEventListener("touch",irEscenaPilares)
	
	
	


	
	
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