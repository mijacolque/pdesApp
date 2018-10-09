local composer = require( "composer" )
 
local scene = composer.newScene()
local widget = require( "widget" )
local playaudioprincipal = audio.loadSound( "src/principal/principal.mp3" )
local audio_principal = audio.play( playaudioprincipal, { channel=3, loops=-10 } ) 
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
	
	


	
	
	local fondoMenu = display.newImageRect("src/principal/menu/fondo-menu.png",320,570)
	fondoMenu.x = display.contentWidth/2
	fondoMenu.y = display.contentHeight/2
	
	fondoMenu.isVisible=false
	
	sceneGroup:insert(fondoMenu)


	
	
	
	
			local titulo_menu = display.newImageRect("src/principal/menu/titulo_menu.png",300,50)
	titulo_menu.x = display.contentWidth/2-30
	titulo_menu.y = display.contentHeight/2-220
	titulo_menu.isVisible=false
	sceneGroup:insert(titulo_menu)
	
	
				local inicio_menu = display.newImageRect("src/principal/menu/btn_inicio.png",300,50)
	inicio_menu.x = display.contentWidth/2-110
	inicio_menu.y = display.contentHeight/2-150
	inicio_menu.isVisible=false
	sceneGroup:insert(inicio_menu)
	
			local aprende_menu = display.newImageRect("src/principal/menu/btn_aprende.png",300,50)
	aprende_menu.x = display.contentWidth/2-100
	aprende_menu.y = display.contentHeight/2-100
	aprende_menu.isVisible=false
	sceneGroup:insert(aprende_menu)
	
				local juega_menu = display.newImageRect("src/principal/menu/btn_juega.png",300,50)
	juega_menu.x = display.contentWidth/2-60
	juega_menu.y = display.contentHeight/2-50
	juega_menu.isVisible=false
	sceneGroup:insert(juega_menu)
	
					local geolocaliza_menu = display.newImageRect("src/principal/menu/btn_geolocaliza.png",300,50)
	geolocaliza_menu.x = display.contentWidth/2-45
	geolocaliza_menu.y = display.contentHeight/2
	geolocaliza_menu.isVisible=false
	sceneGroup:insert(geolocaliza_menu)
	
					local acercade_menu = display.newImageRect("src/principal/menu/btn_acercade.png",300,50)
	acercade_menu.x = display.contentWidth/2-95
	acercade_menu.y = display.contentHeight/2+50
	acercade_menu.isVisible=false
	sceneGroup:insert(acercade_menu)
	
	
		
		
	
			
			
		
			fondoMenu.isVisible=true

			titulo_menu.isVisible=true
			inicio_menu.isVisible=true
			aprende_menu.isVisible=true
			juega_menu.isVisible=true
			geolocaliza_menu.isVisible=true
			acercade_menu.isVisible=true
			

		
		
	
		
		function irInicio()
			
			composer.removeScene('menu',false) 
			composer.gotoScene('principal', { effect = 'fade', time = 700 } ) 
		
		end 

		inicio_menu:addEventListener("touch",irInicio)
		
		
		function irAprende()
			
			composer.removeScene('menu',false) 
			composer.gotoScene('aprende1', { effect = 'fade', time = 700 } ) 
		
		end 

		aprende_menu:addEventListener("touch",irAprende)
		
				function irPilares()
			
			composer.removeScene('menu',false) 
			composer.gotoScene('pilares', { effect = 'slideLeft', time = 700 } ) 
		
		end 

		fondoMenu:addEventListener("touch",irPilares)

		
	
	
	
 
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