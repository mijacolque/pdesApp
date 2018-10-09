local composer = require( "composer" )
 
local scene = composer.newScene()

local playaudioplani = audio.loadStream( "src/intro_plani/plani.mp3" )
local audio_plani = audio.play( playaudioplani, { channel=1, loops=-1 } ) 
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
	
	local grupo_plani = self.view 
	
	display.setDefault( "background",255/255,255/255,255/255 )
	
	local fondo_plani = display.newImageRect("src/intro_plani/logoplani.png",300,300)
	fondo_plani.x = display.contentWidth/2
	fondo_plani.y = display.contentHeight/2
	
	grupo_plani:insert(fondo_plani)
	
	local function listener( event )
		
		audio.stop( audio_plani )
		composer.removeScene('intro_plani',false) 
		composer.gotoScene('principal', { effect = 'fade', time = 700 } ) 
		
		
	end
  
	timer.performWithDelay( 2500, listener )
	
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