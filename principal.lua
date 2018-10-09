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
	
	local propiedades = {width=320,height=570,numFrames=4}
	
	local fondo1= graphics.newImageSheet("src/principal/fondoPrincipal.jpg",propiedades)
	
	
	local imagenes =  {
	{name="lento",start=1, count=4,time=24000},
	}
	
	local animation = display.newSprite(fondo1,imagenes)
	
	animation.x=160
	animation.y=240
	
	animation:setSequence("lento")
	animation:play()
	
	sceneGroup:insert(animation)
	
	--logo app----
	
	local logoapp = display.newImageRect("src/principal/logo_app.png",237.822,77.046)
	logoapp.x = display.contentWidth/2
	logoapp.y = display.contentHeight/4
	
	sceneGroup:insert(logoapp)
	
	local btnAprendePrincipal = widget.newButton(
			{
				width = 213,
				height = 50,
				defaultFile = "src/principal/btnAprendePrincipal.png",
				overFile = "src/principal/btnAprendePrincipalPress.png"
			}
		)
		 
		-- Center the button
		btnAprendePrincipal.x =display.contentWidth/2
		btnAprendePrincipal.y =display.contentHeight/2
		
		sceneGroup:insert(btnAprendePrincipal)
		
	
	
	local btnJuegaPrincipal = widget.newButton(
			{
				width = 213,
				height = 50,
				defaultFile = "src/principal/btnJuegaPrincipal.png",
				overFile = "src/principal/btnJuegaPrincipalPress.png"

			}
		)
		 
		-- Center the button
		btnJuegaPrincipal.x =display.contentWidth/2
		btnJuegaPrincipal.y =display.contentHeight/2+50
		
		sceneGroup:insert(btnJuegaPrincipal)
		
		
		
	local btnGeolocalizaPrincipal = widget.newButton(
			{
				width = 213,
				height = 50,
				defaultFile = "src/principal/btnGeolocalizaPrincipal.png",
				overFile = "src/principal/btnGeolocalizaPrincipalPress.png"
				
			}
		)
		 
		-- Center the button
		btnGeolocalizaPrincipal.x =display.contentWidth/2
		btnGeolocalizaPrincipal.y =display.contentHeight/2+100
		
		sceneGroup:insert(btnGeolocalizaPrincipal)
		
		
		local txtpdes = display.newImageRect("src/principal/txtpdes.png",254.2,35)
	txtpdes.x = display.contentWidth/2
	txtpdes.y = display.contentHeight/2 + 220
	
	sceneGroup:insert(txtpdes)
	
	
	
	
	local btnMenu = widget.newButton(
			{
				width = 100,
				height = 30,
				defaultFile = "src/principal/btnmenu.png",
				overFile = "src/principal/btnmenu.png"
				
			}
		)
		 
		-- Center the button
		btnMenu.x =display.contentWidth/2+100
		btnMenu.y =display.contentHeight/2-230
		
	sceneGroup:insert(btnMenu)
	
		local btnActivarAudio = widget.newButton(
			{
				width = 30,
				height = 30,
				defaultFile = "src/principal/music-on.png",
				overFile = "src/principal/music-on.png"
				
			}
		)
		 
		-- Center the button
		btnActivarAudio.x =display.contentWidth/2-100
		btnActivarAudio.y =display.contentHeight/2-230
		btnActivarAudio.isVisible=true
		
	sceneGroup:insert(btnActivarAudio)
	
			local btnDesactivarAudio = widget.newButton(
			{
				width = 30,
				height = 30,
				defaultFile = "src/principal/music-off.png",
				overFile = "src/principal/music-off.png"
				
			}
		)
		 
		-- Center the button
		btnDesactivarAudio.x =display.contentWidth/2-100
		btnDesactivarAudio.y =display.contentHeight/2-230
		btnDesactivarAudio.isVisible=false
		
	sceneGroup:insert(btnDesactivarAudio)
	

	local myRectangle = display.newRect( 160, 250, 320, 600 )

	myRectangle:setFillColor(1/255,1/255,1/255,10)
	myRectangle.alpha=0.6
	myRectangle.isVisible=false;
	sceneGroup:insert(myRectangle)
	
	
	local fondoMenu = display.newImageRect("src/principal/menu/fondo-menu.png",320,570)
	fondoMenu.x = display.contentWidth/2-70
	fondoMenu.y = display.contentHeight/2
	
	fondoMenu.isVisible=false
	
	sceneGroup:insert(fondoMenu)


	local btnMenuCerrar = widget.newButton(
			{
				width = 35,
				height = 30,
				defaultFile = "src/principal/menu/btn_cerrar_menu.png",
				overFile = "src/principal/menu/btn_cerrar_menu.png"
				
			}
		)
		 
		-- Center the button
	btnMenuCerrar.x =display.contentWidth/2+120
	btnMenuCerrar.y =display.contentHeight/2-230
		
	btnMenuCerrar.isVisible=false
		
	sceneGroup:insert(btnMenuCerrar)
	
	
	
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
	
					local geo_menu = display.newImageRect("src/principal/menu/btn_geolocaliza.png",300,50)
	geo_menu.x = display.contentWidth/2-45
	geo_menu.y = display.contentHeight/2
	geo_menu.isVisible=false
	sceneGroup:insert(geo_menu)
	
					local acercade_menu = display.newImageRect("src/principal/menu/btn_acercade.png",300,50)
	acercade_menu.x = display.contentWidth/2-95
	acercade_menu.y = display.contentHeight/2+50
	acercade_menu.isVisible=false
	sceneGroup:insert(acercade_menu)
	
	
		
		
		function irAbrirMenu()
			
			myRectangle.isVisible=true;
			btnMenu.isVisible=false
			fondoMenu.isVisible=true
			btnMenuCerrar.isVisible=true
			titulo_menu.isVisible=true
			inicio_menu.isVisible=true
			aprende_menu.isVisible=true
			juega_menu.isVisible=true
			geo_menu.isVisible=true
			acercade_menu.isVisible=true
			btnAprendePrincipal.isVisible=false
			btnGeolocalizaPrincipal.isVisible=false
			btnJuegaPrincipal.isVisible=false
			
		end 

		btnMenu:addEventListener("touch",irAbrirMenu)
		
		function irCerrarMenu()
		
			btnMenuCerrar.isVisible=false
			myRectangle.isVisible=false;
			btnMenu.isVisible=true
			fondoMenu.isVisible=false
			titulo_menu.isVisible=false
			inicio_menu.isVisible=false
			aprende_menu.isVisible=false
			juega_menu.isVisible=false
			geo_menu.isVisible=false
			acercade_menu.isVisible=false
			btnAprendePrincipal.isVisible=true
			btnGeolocalizaPrincipal.isVisible=true
			btnJuegaPrincipal.isVisible=true
		end 

		btnMenuCerrar:addEventListener("touch",irCerrarMenu)
		
		function desactivarAudio()
			audio.stop( audio_principal )
			btnActivarAudio.isVisible=false
			btnDesactivarAudio.isVisible=true
		end 

		btnActivarAudio:addEventListener("touch",desactivarAudio)
		
		function activarAudio()
			local audio_principal = audio.play( playaudioprincipal, { channel=3, loops=-10 } ) 
			audio.play( audio_principal )
			btnActivarAudio.isVisible=true
			btnDesactivarAudio.isVisible=false
		end 

		btnDesactivarAudio:addEventListener("touch",activarAudio)
		
		function irInicio()
			
			irCerrarMenu()
		
		end 

		inicio_menu:addEventListener("touch",irInicio)
		
		
		function irAprende()
			desactivarAudio()
			composer.removeScene('principal',false) 
			composer.gotoScene('aprende1', { effect = 'fade', time = 700 } ) 
		
		end 

		aprende_menu:addEventListener("touch",irAprende)
		btnAprendePrincipal:addEventListener("touch",irAprende)
		
		
		
		function irGeolocaliza()
			desactivarAudio()
			composer.removeScene('principal',false) 
			composer.gotoScene('geolocaliza', { effect = 'fade', time = 700 } ) 
		
		end 
		
		geo_menu:addEventListener("touch",irGeolocaliza)
		btnGeolocalizaPrincipal:addEventListener("touch",irGeolocaliza)
		
		
		
		function irJuego()
			desactivarAudio()
			composer.removeScene('principal',false) 
			composer.gotoScene('intro_juego', { effect = 'fade', time = 700 } ) 
		
		end 
		
		juega_menu:addEventListener("touch",irJuego)
		btnJuegaPrincipal:addEventListener("touch",irJuego)
		
		

		
	
	
	
 
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