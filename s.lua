--[[
@RESOURCE: hud-gtao.
@KONTAKT mój: discord / kamil#2087.
@DO: GTAO.pl.
@DATA: 2020-04-24.
@OPIS Szczegółowy: Panel HUD.
]]


addEventHandler("onPlayerJoin", root,function()
	 setPlayerHudComponentVisible(source, "armour", false)
	 setPlayerHudComponentVisible(source, "breath", false)
	 setPlayerHudComponentVisible(source, "clock", false)
	 setPlayerHudComponentVisible(source, "health", false)
	 setPlayerHudComponentVisible(source, "money", false)
	 setPlayerHudComponentVisible(source, "weapon", false)
	 end
	 )