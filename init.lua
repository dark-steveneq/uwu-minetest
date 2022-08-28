local uwuify_enable = false

minetest.register_chatcommand("uwuify",{
    perms = {server = true},
    func = function(name)
	    if uwuify_enable == true then
            minetest.chat_send_player(name, "pwease tuwn me back on >_<")
    	    uwuify_enable = false
        elseif uwuify_enable == false then
            minetest.chat_send_player(name, "wet's uwuify whowe wowwd!")
	        uwuify_enable = true
        end
    end
})

local ie = _G
if minetest.request_insecure_environment then
    ie = minetest.request_insecure_environment()
else
    minetest.chat_send_all("you must disabwe mod secuwity fow u-uwu to wowk")
end

if ie then
    minetest.register_on_chat_message(function(name, message)
	if uwuify_enable == true then
            local command = ie.io.popen([[echo "]]..message..[[" | uwuify]])
            local uwuified = command:read("*a")
            minetest.chat_send_all("<"..name.."> "..uwuified)
            return true
        end
    end)
end
