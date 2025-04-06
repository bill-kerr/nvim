local format_filter = function(client)
	return client.name ~= "ts_ls"
end

local function dump(o)
	if type(o) == 'table' then
		local s = '{ '
		for k, v in pairs(o) do
			if type(k) ~= 'number' then k = '"' .. k .. '"' end
			s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
		end
		return s .. '} '
	else
		return tostring(o)
	end
end

return {
	format = function()
		vim.lsp.buf.format({
			filter = format_filter
		})
	end,
	format_filter = format_filter,
	dump = dump
}
