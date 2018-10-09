local composer = require( 'composer' ) 

 
local scene = composer.newScene() 


local widget = require( 'widget' ) 


function scene:create( event ) 

 
    local sceneGroup = self.view 

	
	local bandera=0 

	
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

	
		local btnPilares = display.newImageRect('imagenes/metas/btnpilares.png',110,40) 

	btnPilares.x = display.contentWidth/2+110 

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
 
		topPadding = 80, 

		bottomPadding=20, 

		horizontalScrollDisabled=true, 

		verticalScrollDisabled=false, 

		listener=scrollListener, 

		backgroundColor={255/255,255/255,255/255}, 

	}
	

  

	
local meta = display.newImageRect('imagenes/metas/11_pilar_meta4.png',320,1000) 

meta.x = display.contentWidth/2 

meta.y = display.contentHeight/2+180 


scrollView:insert(meta) 


		

function irEscenaPilares()

	
	if scrollView then 

	scrollView:removeSelf() 

	scrollView = nil 

	composer.removeScene('11_pilar_meta4',false) 

	composer.gotoScene('pilares', { effect = 'fade', time = 100 } ) 

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
				composer.removeScene("11_pilar_meta4",false) 
				composer.gotoScene("pilares", { effect = "fade", time = 100 } )
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


 
return scene 
 