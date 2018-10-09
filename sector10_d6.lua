local composer = require( 'composer' )  

 
local scene = composer.newScene() 


local widget = require( 'widget' ) 

 
 
function scene:create( event ) 

 
    local sceneGroup = self.view 

	
	local function scrollListener (event) 

		local phase = event.phase 

		local direction = event.direction 

		if event.limitReached then 

			if 'up' == direction then 

				print('Llego al límite de ariba') 

			elseif 'down' == direction then 

				print ('Llego al límite de abajo') 

			end 

		end 

		return true 

	end 


	
	local encabezado_pilares = display.newImageRect('imagenes/pilares/encabezado_pilares.png',320,100) 

	encabezado_pilares.x = display.contentWidth/2 

	encabezado_pilares.y = display.contentHeight/2-235 

	
	sceneGroup:insert(encabezado_pilares) 

	
		local btnPilares = display.newImageRect('imagenes/geolocaliza/btn_proyectos.png',110,40) 

	btnPilares.x = display.contentWidth/2+90 

	btnPilares.y = display.contentHeight/2-240 

	
	sceneGroup:insert(btnPilares) 

	

	
	local btnmenu = display.newImageRect('imagenes/pilares/btnmenu.png',77,23) 

	btnmenu.x = display.contentWidth/2-110 

	btnmenu.y = display.contentHeight/2-240 

	
	sceneGroup:insert(btnmenu) 
 

	
	
	local scrollView = widget.newScrollView 

	{ 

		left=0, 

		top=40, 

	
		width= display.contentWidth, 

		height= display.contentHeight, 

		topPadding = 0, 

		bottomPadding=20, 

		horizontalScrollDisabled=true, 

		verticalScrollDisabled=false, 

		listener=scrollListener, 

		backgroundColor={255/255,255/255,255/255}, 

	}
 

	
	
local webView = native.newWebView( display.contentCenterX, display.contentCenterY,320,480)  


webView:request( 'http://s1bo.com/geolocaliza/sector10/dep6/') 



	webView.x = display.contentWidth/2 


	webView.y = display.contentHeight/2 

	
		scrollView:insert(webView) 


function irEscenaPilares() 

	
	if scrollView then 

	scrollView:removeSelf() 
 
	scrollView = nil 

	composer.removeScene('sector10_d6',false) 
 
	composer.gotoScene('geolocaliza', { effect = 'fade', time = 100 } ) 

	end 

end 


btnPilares:addEventListener('touch',irEscenaPilares) 

 
 local function onKeyEvent( event )
    local keyname = event.keyName;
    if (event.phase == "up" and (event.keyName=="back" or event.keyName=="menu")) then
            if keyname == "menu" then
            	goToMenuScreen()
            elseif keyname == "back" then
			
				if scrollView then 
				scrollView:removeSelf() 
				scrollView = nil 
				composer.removeScene("sector10_d6",false) 
				composer.gotoScene("geolocaliza", { effect = "fade", time = 100 } )
				end 
          
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

