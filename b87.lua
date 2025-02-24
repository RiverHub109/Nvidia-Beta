_G.UrlIsonade = "https://discord.com/api/webhooks/1343601104772010015/pj1fMfXjgvfOXSkmYUidPGnItyutZFwEjAr55H2a6GpxM4OwhVfwISvYV6TUpWQH9D2_"
_G.UrlAurora = "https://discord.com/api/webhooks/1343601242097717408/LurRi2jbOvVKs92ADIvq-JD-S36UhfksWC-Ojihxqs8SBuWivbwbH9Tr7PjLOhULzjvj"
_G.UrlMeteor = "https://discord.com/api/webhooks/1343601354949525595/vxqK_Z5KdprB7DxXuMej5n-hWp1hucm5agqXI7sPvg4KW5EGa0R_d-ptZYgtxFQP7D9P"
_G.UrlMegalodon = "https://discord.com/api/webhooks/1343601571036004382/g44tJeohwGVJJ1jYCc85HZiT5B-mnf-YOwQyrRsjQht1o3Z1k-OTRZp4o1WS93fU7Bja"
_G.UrlGoldenTide = "https://discord.com/api/webhooks/1343601702775029932/bMM8ask5hdTtojBr9R2KPOjLOpDOb0e-_t18jRIhiYTUxIzR6RkFebDmTkmitqRymJx7"

spawn(function()
    for i, v in pairs(workspace.zones.fishing:GetChildren()) do
        if v.Name == "Isonade" then
            pcall(function()
                local data = {
                    ["embeds"] = {{
                        ["title"] = "**Isonade Notify | Nvidia Hub*",
                        ["color"] = 0x7269da,
                        ["fields"] = {
                            {
                                ["name"] = "**Players:**", 
                                ["value"] = string.format("```%d/%d```", #game:GetService("Players"):GetPlayers(), game:GetService("Players").MaxPlayers), 
                                ["inline"] = true},
                            {
                                ["name"] = "**Position:**", 
                                ["value"] = string.format("```X:%.2f, Y:%.2f, Z:%.2f```", v.Position.X, v.Position.Y, v.Position.Z), 
                                ["inline"] = true},
                            {
                                ["name"] = "**JobId:**", 
                                ["value"] = string.format("```%s```", game.JobId), 
                                ["inline"] = true},
                            {
                                ["name"] = "**Script:**", 
                                ["value"] = string.format("```lua\n%s\n```", string.format('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", "%s")', game.JobId)), 
                                ["inline"] = false}
                      },
                      ["thumbnail"] = {
				["url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
                        },
                        ["footer"] = {
                         	["text"] = "Nvidia Hub";
			     			["icon_url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
                    }}
                }
                local sendRequest = syn or request or http_request
                if sendRequest then
                    sendRequest({Url = _G.UrlIsonade, Method = 'POST', Headers = {['Content-Type'] = 'application/json'}, Body = game:GetService('HttpService'):JSONEncode(data)})
                end
            end)
            break
        end
    end
end)

spawn(function()
    if game:GetService("ReplicatedStorage").world.weather.Value == "Aurora_Borealis" then
        pcall(function()
            local data = {
                ["embeds"] = {{
                    ["title"] = "**Aurora Notify | Nvidia Hub**",
                    ["color"] = 0x7269da,
                    ["fields"] = {
                        {
                            ["name"] = "**Players:**", 
                            ["value"] = string.format("```%d/%d```", #game:GetService("Players"):GetPlayers(), game:GetService("Players").MaxPlayers), 
                           ["inline"] = true},
                        {
                           ["name"] = "**JobId:**", 
                           ["value"] = string.format("```%s```", game.JobId), 
                           ["inline"] = true},
                        {
                           ["name"] = "**Script:**", 
                           ["value"] = string.format("```lua\n%s\n```", string.format('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", "%s")', game.JobId)), 
                            ["inline"] = false}
                      },
                      ["thumbnail"] = {
				["url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
                    },
                    ["footer"] = {
                         	["text"] = "Nvidia Hub";
			     			["icon_url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
                    }
                }}
            
            local sendRequest = syn or request or http_request
            if sendRequest then
                sendRequest({Url = _G.UrlAurora, Method = 'POST', Headers = {['Content-Type'] = 'application/json'}, Body = game:GetService('HttpService'):JSONEncode(data)})
                _G.Aurora = true
            end
        end)
    else
        _G.Aurora = true
    end
end)

spawn(function()
    for _, v in pairs(workspace.MeteorItems:GetChildren()) do
        pcall(function()
            local data = {
                ["embeds"] = {{
                    ["title"] = "**Meteor Notify | Nvidia Hub**",
                    ["color"] = 0x7269da,
                    ["fields"] = {
                        {
                    ["name"] = "**Players:**", 
                    ["value"] = string.format("```%d/%d```", #game.Players:GetPlayers(), game.Players.MaxPlayers), 
                    ["inline"] = true},
                        {
                    ["name"] = "**Gem:**", 
                    ["value"] = string.format("```%s```", v.Name), 
                    ["inline"] = true},
                        {
                    ["name"] = "**JobId:**", 
                    ["value"] = string.format("```%s```", game.JobId), 
                    ["inline"] = true},
                        {
                    ["name"] = "**Script:**", 
                    ["value"] = string.format("```lua\n%s\n```", string.format('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", "%s")', game.JobId)), 
                    ["inline"] = false}
                 },
                      ["thumbnail"] = {
				["url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
                    },
                    ["footer"] = {
                		["text"] = "Nvidia Hub";
						["icon_url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
                       }
                }}
            
            local sendRequest = syn or request or http_request
            if sendRequest then
                sendRequest({Url = _G.UrlMeteor, Method = 'POST', Headers = {['Content-Type'] = 'application/json'}, Body = game:GetService('HttpService'):JSONEncode(data)})
            end
        end)
    end
end)

spawn(function()
    for i, v in pairs(workspace.zones.fishing:GetChildren()) do
        if v.Name:lower():find("megalodon") then
            pcall(function()
                local data = {
                    ["embeds"] = {{
                        ["title"] = "**Megalodon Notify | Nvidia Hub**",
                        ["color"] = 0x7269da,
                        ["fields"] = {
                            {
                        ["name"] = "**Players:**", 
                        ["value"] = string.format("```%d/%d```", #game:GetService("Players"):GetPlayers(), game:GetService("Players").MaxPlayers), 
                        ["inline"] = true},
                            {
                        ["name"] = "**Position:**", 
                        ["value"] = string.format("```X:%.2f, Y:%.2f, Z:%.2f```", v.Position.X, v.Position.Y, v.Position.Z), 
                        ["inline"] = true},
                            {
                        ["name"] = "**JobId:**", 
                        ["value"] = string.format("```%s```", game.JobId), 
                        ["inline"] = true},
                            {
                        ["name"] = "**Script:**", 
                        ["value"] = string.format("```lua\n%s\n```", string.format('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", "%s")', game.JobId)), 
                        ["inline"] = false}
                         },
                      ["thumbnail"] = {
				["url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
                        },
                        ["footer"] = {
 						["text"] = "Nvidia Hub";
						["icon_url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
                        }
                    }}
                
                local sendRequest = syn or request or http_request
                if sendRequest then
                    sendRequest({Url = _G.UrlMegalodon, Method = 'POST', Headers = {['Content-Type'] = 'application/json'}, Body = game:GetService('HttpService'):JSONEncode(data)})
                end
            end)
            break
        end
    end
end)

spawn(function()
    for i, v in pairs(workspace.zones.fishing:GetChildren()) do
        if v.Name:lower():find("golden tide") then
            pcall(function()
                local data = {
                    ["embeds"] = {{
                        ["title"] = "**Golden Tide Notify | Nvidia Hub**",
                        ["color"] = 0x7269da,
                        ["fields"] = {
                            {
                        ["name"] = "**Players:**", 
                        ["value"] = string.format("```%d/%d```", #game:GetService("Players"):GetPlayers(), game:GetService("Players").MaxPlayers), 
                        ["inline"] = true},
                            {
                        ["name"] = "**Position:**", 
                        ["value"] = string.format("```X:%.2f, Y:%.2f, Z:%.2f```", v.Position.X, v.Position.Y, v.Position.Z), 
                        ["inline"] = true},
                            {
                        ["name"] = "**JobId:**", 
                        ["value"] = string.format("```%s```", game.JobId), ["inline"] = true},
                            {
                        ["name"] = "**Script:**", 
                        ["value"] = string.format("```lua\n%s\n```", string.format('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", "%s")', game.JobId)), 
                        ["inline"] = false}
                   },
                      ["thumbnail"] = {
				["url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
                        },
                        ["footer"] = {
 						["text"] = "Nvidia Hub";
						["icon_url"] = "https://img5.pic.in.th/file/secure-sv1/37747cc9b410073591a4dda3fb4e066f.png";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
                        }
                    }}
                
                local sendRequest = syn or request or http_request
                if sendRequest then
                    sendRequest({Url = _G.UrlGoldenTide, Method = 'POST', Headers = {['Content-Type'] = 'application/json'}, Body = game:GetService('HttpService'):JSONEncode(data)})
                end
            end)
            break
        end
    end
end)

while true do task.wait()
    pcall(function()
        local response = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
        local serverData = game:GetService("HttpService"):JSONDecode(response)

        for _, server in ipairs(serverData.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                pcall(function()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
                end)
            end
        end
    end)
end

-- workspace.zones.fishing
