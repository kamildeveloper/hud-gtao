--[[
@RESOURCE: hud-gtao.
@KONTAKT mój: discord / kamil#2087.
@DO: GTAO.pl.
@DATA: 2020-04-24.
@RELEASE: 2021-01-10.
@OPIS Szczegółowy: Panel HUD.
]]

-- skalowanie odśrodkowe i czcionka
local screen_res = {guiGetScreenSize()};
local scale_res = 1920/screen_res[1];
local font_cash = dxCreateFont("misc/pieniadze.ttf", 18/scale_res);
local font_regular = dxCreateFont("misc/Roboto-Regular.ttf", 18/scale_res);
hud = {}

hud.render = function()

	cash = getPlayerMoney(localPlayer);
	cashstring = string.format("%.02f",cash);
	gettime = getRealTime();
	hours = gettime.hour;
	minutes = gettime.minute;
        timef = string.format("%02d:%02d", hours, minutes);
	plrname = getPlayerName(localPlayer);

	dxDrawImage(screen_res[1] - 505/scale_res, screen_res[2] - 1025/scale_res, 490/scale_res, 100/scale_res, 'img/background.png', angle, 0, -120 )
	dxDrawImage(screen_res[1] - 497/scale_res, screen_res[2] - 1015/scale_res, 82/scale_res, 82/scale_res, 'img/avatar.png', angle, 0, -120 )
	dxDrawText(plrname.."",screen_res[1] - 520/scale_res, screen_res[2] - 1975/scale_res, 1920/scale_res, 1080/scale_res,tocolor(255,255,255),1, font_regular,"center","center",false,false,false,true,false )
	dxDrawText(cashstring.."€",screen_res[1] - 520/scale_res, screen_res[2] - 1915/scale_res, 1920/scale_res, 1080/scale_res,tocolor(255,255,255),1, font_cash,"center","center",false,false,false,true,false )
	dxDrawText(timef,screen_res[1] - 170/scale_res, screen_res[2] - 1945/scale_res, 1920/scale_res, 1080/scale_res,tocolor(255,255,255),1.0, font_regular,"center","center",false,false,false,true,false )

end


addEventHandler("onClientResourceStart", resourceRoot,function()
	addEventHandler("onClientRender", root, hud.render)
	end
	)
