local dvdx
local dvdy
local originalwindowx
local originalwindowy
local dvdvelocityx = 1
local dvdvelocityy = 1
local displayx
local displayy
local dvdspeed = 1.25
local ison = -1

function onCreatePost()
	originalwindowx = getPropertyFromClass("openfl.Lib", "application.window.x")
	originalwindowy = getPropertyFromClass("openfl.Lib", "application.window.y")
	displayx = getPropertyFromClass('lime.app.Application', 'current.window.display.currentMode.width')
	displayy = getPropertyFromClass('lime.app.Application', 'current.window.display.currentMode.height')
end

function onEvent(name, value1, value2)
	if name == 'windowdvd' then
		windowwidth = getPropertyFromClass("openfl.Lib", "application.window.width")
		windowheight = getPropertyFromClass("openfl.Lib", "application.window.height")
		dvdx = getPropertyFromClass("openfl.Lib", "application.window.x")
		dvdy = getPropertyFromClass("openfl.Lib", "application.window.y")
		if value1  ~= '' then
			dvdspeed = tonumber(value1)
		else
			dvdspeed = 1.5
		end
		if value2 ~= '' then
			ison = tonumber(value2)
		else
			ison = ison * -1
		end
		if ison == -1 then
			setPropertyFromClass("openfl.Lib", "application.window.x", originalwindowx)
			setPropertyFromClass("openfl.Lib", "application.window.y", originalwindowy)
		end
	end
end

function onUpdate()
	if ison == 1 then
		setPropertyFromClass("openfl.Lib", "application.window.x", dvdx + (dvdspeed * dvdvelocityx))
		setPropertyFromClass("openfl.Lib", "application.window.y", dvdy + (dvdspeed * dvdvelocityy))
		dvdx = getPropertyFromClass("openfl.Lib", "application.window.x")
		dvdy = getPropertyFromClass("openfl.Lib", "application.window.y")
		if dvdx > (displayx - windowwidth) or dvdx < 0 then
			dvdvelocityx = dvdvelocityx * (-1 * 1)
			if dvdx < 0 then
				dvdx = dvdx + 5
			elseif dvdx > (displayx - windowwidth) then
				dvdx = dvdx - 5
			end
		end
		if dvdy > (displayy - windowheight) or dvdy < 30 then
			dvdvelocityy = dvdvelocityy * (-1 * 1)
			if dvdy < 30 then
				dvdy = dvdy + 5
			elseif dvdy > (displayy - windowheight) then
				dvdy = dvdy - 5
			end
		end
	end
end

function onGameOver()
	ison = -1
	setPropertyFromClass("openfl.Lib", "application.window.x", originalwindowx)
	setPropertyFromClass("openfl.Lib", "application.window.y", originalwindowy)
	return Function_Continue
end

function onDestroy()
	setPropertyFromClass("openfl.Lib", "application.window.x", originalwindowx)
	setPropertyFromClass("openfl.Lib", "application.window.y", originalwindowy)
end