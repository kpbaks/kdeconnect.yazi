local get_hovered_file = ya.sync(function(state, b)
	-- within the `sync()` block, in an async plugin
	local h = cx.active.current.hovered
	return h
end)

local selected_files = ya.sync(function(state, b)

end)

return {
	setup = function(state, opts)
		local target_os = target_os()
		local supported_os = { "macos", "linux" }
		local supported = false
		for _, os in ipairs(supported_os) do
			if target_os == os then
				supported = true
				break
			end
		end

		if not supported then
		end

		if opts.device ~= nil then
			state.device = opts.device
		else
			-- Look it up with `kdeconnect-cli`
			ya.err({ foo = "bar", baz = 123, qux = true }) -- Any type of data is supported
			ya.err("Hello", "World!") -- Multiple arguments are supported
			-- local handle = io.popen("ls " .. ya.quote(filename))
			state.device = nil
		end
	end,
	entry = function(self, args)
		local hovered = get_hovered_file()
		-- cha is like filestat, cannot send a fifo or a character device
		local cha, err = fs.cha(url)

		local child, err = Command("kdeconnect-cli")
		:args({"--device", tostring(self.state.device)})
	:spawn()

	-- ...
	-- Await command completion, and notify user when file has been transfered, or if it failed

		-- local child, err = Command("ls")
		-- 	:args({ "-a", "-l" })
		-- 	:stdout(Command.PIPED)
		-- 	:spawn()
	end,
}
	
