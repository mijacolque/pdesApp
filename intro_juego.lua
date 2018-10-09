local composer = require( "composer" )
local scene = composer.newScene()

local function irEscenaPrincipal()

	local options={
	
		effect="fade",
		time=500
	}
	
	composer.gotoScene("juego",options)
	
end

function scene:create( event )
 
    local sceneGroup = self.view

 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	
				local propiedades = {width=320,height=570,numFrames=6}
				
				local fondo1= graphics.newImageSheet("imagenes/juego/introjuego.jpg",propiedades)
				
				
				local imagenes =  {
				{name="lento",start=1, count=6,time=6000},
				}
				
				local animation = display.newSprite(fondo1,imagenes)
				
				animation.x=160
				animation.y=240
				
				animation:setSequence("lento")
				animation:play()
				
				sceneGroup:insert(animation)
				
				
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
	
        	timer.performWithDelay( 5400,irEscenaPrincipal)
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
       

	
	
 
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