-- This file is part of SUIT

local BASE = (...):match('(.-)[^%.]+$')

return function(core, text, ...)
	local opt, x,y,w,h = core.getOptionsAndSize(...)
	opt.id = opt.id or love.math.random(10000)
	opt.font = opt.font or love.graphics.getFont()

	w = w or 16
	h = h or 16

	core:registerDraw(opt.draw or core.theme.Groupbox, text, opt, x,y,w,h)

	return {
		id = opt.id,
	}
end
