--[[
@RESOURCE: hud-gtao.
@KONTAKT mój: discord / kamil#2087.
@DO: GTAO.pl.
@DATA: 2020-04-24.
@OPIS Szczegółowy: Panel HUD.
]]

-- skalowanie odśrodkowe i czcionka
local rozdzielczosc = {guiGetScreenSize()};
local skalowanie = 1920/rozdzielczosc[1];
local czcionka_pieniadze = dxCreateFont("misc/pieniadze.ttf", 18/skalowanie);
local czcionka_regular = dxCreateFont("misc/Roboto-Regular.ttf", 18/skalowanie);
hud = {}

hud.render = function()

	local pieniadze = getPlayerMoney(localPlayer);
	local pieniadzestring = string.format("%.02f",pieniadze);
	local czas = getRealTime();
	local godziny = czas.hour;
	local minuty = czas.minute;
    local czasf = string.format("%02d:%02d", godziny, minuty);
	local nazwa = getPlayerName(localPlayer);

	dxDrawImage(rozdzielczosc[1] - 505/skalowanie, rozdzielczosc[2] - 1025/skalowanie, 490/skalowanie, 100/skalowanie, 'img/background.png', angle, 0, -120 )
	dxDrawImage(rozdzielczosc[1] - 497/skalowanie, rozdzielczosc[2] - 1015/skalowanie, 82/skalowanie, 82/skalowanie, 'img/avatar.png', angle, 0, -120 )
	dxDrawText(nazwa.."",rozdzielczosc[1] - 520/skalowanie, rozdzielczosc[2] - 1975/skalowanie, 1920/skalowanie, 1080/skalowanie,tocolor(255,255,255),1, czcionka_regular,"center","center",false,false,false,true,false )
	dxDrawText(pieniadzestring.."€",rozdzielczosc[1] - 520/skalowanie, rozdzielczosc[2] - 1915/skalowanie, 1920/skalowanie, 1080/skalowanie,tocolor(255,255,255),1, czcionka_pieniadze,"center","center",false,false,false,true,false )
	dxDrawText(czasf,rozdzielczosc[1] - 170/skalowanie, rozdzielczosc[2] - 1945/skalowanie, 1920/skalowanie, 1080/skalowanie,tocolor(255,255,255),1.0, czcionka_regular,"center","center",false,false,false,true,false )

end


addEventHandler("onClientResourceStart", resourceRoot,function()
	addEventHandler("onClientRender", root, hud.render)
	end
	)