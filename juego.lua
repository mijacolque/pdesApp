local composer = require( 'composer' )  

 
local scene = composer.newScene() 


local widget = require( 'widget' ) 

 
 
function scene:create( event ) 

 
    local sceneGroup = self.view 
	
local webView = native.newWebView( display.contentCenterX, display.contentCenterY, 320, 570 )
webView:deleteCookies()
webView:request( "http://s1bo.com/app-juego/link/" )

sceneGroup:insert(webView) 


local function onKeyEvent( event )
    local keyname = event.keyName;
    if (event.phase == "up" and (event.keyName=="back" or event.keyName=="menu")) then
            if keyname == "menu" then
            	goToMenuScreen()
            elseif keyname == "back" then
				webView:deleteCookies()
				webView:removeSelf()
				composer.removeScene("juego",false) 
				composer.gotoScene("principal", { effect = "fade", time = 100 } )
          
            elseif keyname == "search" then
            	performSearch();
            end
	end
    return true;
end
 --add the runtime event listener
if system.getInfo( "platformName" ) == "Android" then  Runtime:addEventListener( "key", onKeyEvent ) end

	
end 

 
 

function scene:show( event ) 

 
    local sceneGroup = self.view 

    local phase = event.phase 

 
    if ( phase == 'will' ) then 

 
    elseif ( phase == 'did' ) then 


 
    end  

end  

 

function scene:hide( event )  

 
    local sceneGroup = self.view  

    local phase = event.phase  

 
    if ( phase == 'will' ) then  

        
    elseif ( phase == 'did' ) then 

        
    end 

end 

 
 function scene:destroy( event )  

 
    local sceneGroup = self.view  

   
end 

 
scene:addEventListener( 'create', scene ) 

scene:addEventListener( 'show', scene ) 

scene:addEventListener( 'hide', scene ) 

scene:addEventListener( 'destroy', scene ) 

-- -----------------------------------------------------------------------------------
 
return scene

