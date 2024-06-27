--UI made by 404_err0rrrr (not yet im not claiming any of this working on the UI right now) 

y = loadstring(game:HttpGet("https://raw.githubusercontent.com/eerrorfourOfour/qrtttt/main/qrtt.lua"))() --Copied to change color only
Window = Library.Main("Flix_y v5 Syr0nix UI","RightShift")
 Tab = Window.NewTab("Gampass")
 Section = Tab.NewSection("Skins")
 Button = Section.NewButton("Wings",function()
	 args = {[1] = "Wings",[2] = 0,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Ocean Skin",function()
	 args = {[1] = "Ocean",[2] = 0,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Dragon skin",function()
	 args = {[1] = "Dragon",[2] = 0,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Remove Wings",function()
	 args = {[1] = "Wings",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Remove Ocean skin",function()
	 args = {[1] = "Ocean",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Remove Dragon skin",function()
	 args = {[1] = "Dragon",[2] = 1,[3] = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Tab = Window.NewTab("VIW")
 Section = Tab.NewSection("Wanna Be VIW")
 Button = Section.NewButton("VIW TAG",function()
	game.ReplicatedStorage.MasterKey:FireServer("AddVIWTag", nil, "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD")
end)
 Button = Section.NewButton("Remove Name tags",function()
	 args = {[1] = "ChangeDesc",[2] = "",[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
	 args = {[1] = "ChangeName",[2] = "",[3] = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151\153"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
game.Players.Player.Character.Head.NameTag.Main.Pack:remove()
	game.Players.Player.Character.Head.NameTag.Main.VIW:remove()
end)

_G.autoaudiomute = false
 EnabledToggle = Section.NewToggle("Mute VIW Music",function(bool)
	if _G.autoaudiomute then
		_G.autoaudiomute = false
		return
	else
		_G.autoaudiomute = true
	end
	while _G.autoaudiomute do
		task.wait()
		for _,v in next, game:GetService('Players'):GetPlayers()do
			if v.Character and v.Character.Parent ~= nil and v.Character:FindFirstChild('HumanoidRootPart') and v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM') then
				v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM'):Stop()
				v.Character:FindFirstChild('HumanoidRootPart'):FindFirstChild('RadioM').Playing = false
			end
		end
	end
end)

muteAllSounds = Section.NewButton('Mute All Sounds', function()
    for _, sound in pairs(game:GetDescendants()) do
        if sound:IsA('Sound') then
            sound.Playing = false
        end
    end
end)


 timergb, RBW_COL = 7
rgb1 = game:GetService('RunService').Heartbeat:Connect(function()
	 hue = tick() % timergb / timergb
	RBW_COL = Color3.fromHSV(hue,1,1)
end)
_G.cocktuning = {
	dmod = 1, -- mode 1-4
	desc = 'Example Title', -- auto description text
	wait = .2, -- text type speed
	wait2 = .8, -- time wait after done typing for other mods
	wait3 = .4 -- time wait after done typing for mode 3
	}
 text_ = Section.Newtextbox('Description Text',function(self,value)
	_G.cocktuning.desc = value
end)
 mode_ = Section.Newtextbox('Description Mode',function(self,value)
	if tonumber(value) ~= nil then
		_G.cocktuning.dmod = tonumber(value)
	end
end)
--[[
Usage:
    to change mod or text u should just change in _G.cocktuning
    Example:
        dmod = 2,
        desc = 'SOME ANOTHER TEXT TO WHAT U WANT'
    
    DO NOT TOUCH FUCKING WAITS IN _G.cocktuning IF YOU DONT KNOW WHAT THEY MEAN!!
    Cause I don't want to be like sucker when y'all use my script wrongly.. :sob:
    
    Mady by: Unix
    Included to syronix script.
--]]
_G.PROVODASUKAB = false
 cfg = {key = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153",eventname = "ChangeDesc",mk = game:GetService('ReplicatedStorage'):FindFirstChild('MasterKey')}
 Button = Section.NewToggle("Auto Description",function()
	if _G.PROVODASUKAB then
		_G.PROVODASUKAB = false
		return
	else
		_G.PROVODASUKAB = true
	end
	while _G.PROVODASUKAB do
		if _G.cocktuning.dmod==1 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=1 then continue;end
				task.wait(_G.cocktuning.wait)
				 args = {[1] = cfg.eventname,[2] = string.sub(_G.cocktuning.desc,1,i)..'|',[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end;task.wait(_G.cocktuning.wait2)
		elseif _G.cocktuning.dmod==2 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=2 then continue;end
				task.wait(_G.cocktuning.wait)
				 args = {[1] = cfg.eventname,[2] = string.sub(_G.cocktuning.desc,1,#_G.cocktuning.desc-i)..'|',[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end;task.wait(_G.cocktuning.wait2)
		elseif _G.cocktuning.dmod==3 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=3 then continue;end
				task.wait(_G.cocktuning.wait)
				 fakea = _G.cocktuning.desc;fakea=string.sub(_G.cocktuning.desc,math.random(1,#fakea),math.random(1,#fakea)-i)..'|'
				 args = {[1] = cfg.eventname,[2] = fakea,[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end;task.wait(_G.cocktuning.wait3)
		elseif _G.cocktuning.dmod==4 then
			for i = 1,#_G.cocktuning.desc do
				if not _G.PROVODASUKAB or _G.cocktuning.dmod~=4 then continue;end
				task.wait(_G.cocktuning.wait)
				 args = {[1] = cfg.eventname,[2] = '|'..string.sub(_G.cocktuning.desc,#_G.cocktuning.desc-i,#_G.cocktuning.desc),[3] = cfg.key}
				cfg.mk:FireServer(unpack(args))
			end
		end;task.wait(_G.cocktuning.wait2)
	end
end)
 Tab = Window.NewTab("Admin")
 Section = Tab.NewSection("Admin Options")

playerCheck = {}

function playerCheck(p)
	if type(p)=='boolean'or p == nil then return false end
	if game:GetService('Players'):FindFirstChild(p)then
		return game:GetService('Players'):FindFirstChild(p)
	end
end
function findPlayer(name)
	for _,p in next,game:GetService('Players'):GetPlayers()do
		pn = string.lower(p.Name)
		pd = string.lower(p.DisplayName)
		if (string.sub(name,1,#name)==string.sub(pn,1,#name) or string.sub(name,1,#name)==string.sub(pd,1,#name)) then
			return p
		end
	end
	return false
end
NAME,USER = '',nil

ban = Section.Newtextbox('Player Name',function(self,value)
	find = findPlayer(value)
	if find then
		NAME,USER = find.Name,find
		self.Text = find.Name
	else
		self.Text = 'User not found'
	end
end)

Button = Section.NewButton("PlaceHolder"), function()
end
 plr = Section.Newtextbox('Player Name',function(self,value)
	 find = findPlayer(value)
	if find then
		NAME,USER = find.Name,find
		self.Text = find.Name
	else
		self.Text = 'User not found'
	end
end)
Button = Section.NewButton("Freeze Player",function() --Force freeze, not real
	 pl = playerCheck(NAME)
	game:GetService("ReplicatedStorage").CarryNewborn:FireServer(pl)
end)
 local Button = Section.NewButton("Void",function()
    local pl = playerCheck(NAME)
	
	local ogp = game.Players.LocalPlayer.Character.Torso.Position
	
	for count = 0, 20, 1 do
		game:GetService("ReplicatedStorage").CarryNewborn:FireServer(pl)
    	wait()
	end
	
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	wait(.5)
	game.Players.LocalPlayer.Character:MoveTo(ogp)
end)

 Button = Section.NewButton("ResetClient",function()
	 A_1 = "OnReset"
	 Event = game:GetService("ReplicatedStorage").MasterKey
	Event:FireServer(A_1)
end)

 Button = Section.NewButton("RTX",function()
-- Made by Colby :D
sunrays = game.Lighting.SunRays
s = Instance.new("DepthOfFieldEffect")
a = game.Lighting.Atmosphere
game.Lighting.OutdoorAmbient = Color3.fromRGB(50, 50, 50)
game.Lighting.Ambient = Color3.fromRGB(20, 20, 20)
sunrays.Intensity = 0.1
s.FarIntensity = 0.20
s.FocusDistance = 0.05
s.InFocusRadius = 15
s.NearIntensity = 0.75
s.Parent = game.Lighting
sunrays.Parent = game.Lighting 
a.Density = .1
a.Haze = 0
a.Glare = 1
a.Offset = 0
a.Decay = Color3.fromRGB(159, 43, 104)
end)
Button = Section.NewButton("placeholder",function()
end)
 Button = Section.NewButton("Inf Yeld",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 Button = Section.NewButton("placeholder",function()
_G.CustomUI = false
end)

 Button = Section.NewButton("Spy Chat",function()
--This script reveals ALL hidden messages in the default chat
 
enabled = true --chat "/spy" to toggle!
spyOnMyself = true --if true will check your messages too
public = false --if true will chat the logs publicly (fun, risky)
publicItalics = true --if true will use /me to stand out
privateProperties = { --customize private logs
    Color = Color3.fromRGB(0,255,0); 
    Font = Enum.Font.SourceSansBold;
    TextSize = 18;
}

 StarterGui = game:GetService("StarterGui")
 Players = game:GetService("Players")
 player = Players.Player or Players:GetPropertyChangedSignal("Player"):Wait() or Players.Player
 saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
 getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
 instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance
 
 function onChatted(p,msg)
    if _G.chatSpyInstance == instance then
        if p==player and msg:lower():sub(1,4)=="/spy" then
            enabled = not enabled
            wait(0.3)
            privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
            StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
        elseif enabled and (spyOnMyself==true or p~=player) then
            msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
             hidden = true
             conn = getmsg.OnClientEvent:Connect(function(packet,channel)
                if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
                    hidden = false
                end
            end)
            wait(1)
conn:Disconnect()
            if hidden and enabled then
                if public then
                    saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
                else
                    privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
                    StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
                end
            end
        end
    end
end
 
for _,p in ipairs(Players:GetPlayers()) do
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
 chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)


 Button = Section.NewButton("INF CASH",function()
	 args = {[1] = "Coins",[2] = math.huge,[3] = "\226\135\154\225\155\157i\220\176\219\173\230\155\157u"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Anti Fling",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/Anti-Fling/main/Anti%20Fling'))();
end)
 Button = Section.NewButton("Anti pick up",function()
	game.Players.Player.Character.Request:Destroy();
end)
_G.AntiAFK = false
 EnabledToggle = Section.NewToggle("Anti AFK",function(bool)
	if _G.AntiAFK then
		_G.AntiAFK = false
		print("Anti AFK Is Disabled")
		return
	else
		_G.AntiAFK = true
	end
	print("Anti AFK Is Enable")
	 vu = game:GetService("VirtualUser")
	game:GetService("Players").Player.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)
 Tab = Window.NewTab(" OC")
 Section = Tab.NewSection("Be Creative")

local Button = Section.NewButton("Horns+Ears",function()
local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
local fluff = {}
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name:find'Dragon'or v.Name:find'Ear'or table.find(fluff,v.Name))then
        MK1:FireServer("Fluff", v.Name, 0) --   |  1 - invisible  |  0 - visible  | 
    elseif v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads' then
        MK1:FireServer('Fluff', v.Name, 1)
    end
end

local R = game:GetService("ReplicatedStorage")
local MK1, AC = R.MasterKey, R.Accessories
for _,v in next,game:service'Players'.LocalPlayer.Character:children()do
    if v:IsA'BasePart'and (v.Name=='EarFluff'or v.Name=='Claws'or v.Name:find'Paw'or v.Name=='Pads')then
        MK1:FireServer("Fluff", v.Name, 1)
    end
end
end)

--Sets material and color for specific part, made by Flixz_y
 mrtyt = Section.Newtextbox("Material (Is case sensitive!)",function(self,value)
	_G.Je2 = value
end)

 MEfnjrg = Section.Newtextbox("Part (Is case sensitive!)",function(self,value)
	_G.Kc2 = value
end)	

 Button = Section.NewButton("Set Material of Part",function()
	 Materi = _G.Je2
	 Part = _G.Kc2

	 args = {
    	[1] = "Material",
    	[2] = Materi,
    	[3] = {
			[1]=Part,
    	    }
	}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)

 R = Section.Newtextbox("Red Value (RGB)",function(self,value)
	_G.Red1 = value
end)

 G = Section.Newtextbox("Green Value (RGB)",function(self,value)
	_G.Green1 = value
end)

 B = Section.Newtextbox("Blue Value (RGB)",function(self,value)
	_G.Blue1 = value
end)

 Button = Section.NewButton("Set Color of Part",function() -- for custom colored parts
	 color = Color3.fromRGB(_G.Red1,_G.Green1,_G.Blue1)
	 Part = _G.Kc2

	 G_1 = "customize"
	 G_2 = {
		[1] = Part
	}
	 G_4 = "Body"
	game:GetService("ReplicatedStorage").MasterKey:FireServer(G_1, G_2, color, G_4)
end)

function playerCheck(p)
	if type(p)=='boolean'or p == nil then return false end
	if game:GetService('Players'):FindFirstChild(p)then
		return game:GetService('Players'):FindFirstChild(p)
	end
end
 function findPlayer(name)
	for _,p in next,game:GetService('Players'):GetPlayers()do
		 pn = string.lower(p.Name)
		 pd = string.lower(p.DisplayName)
		if (string.sub(name,1,#name)==string.sub(pn,1,#name) or string.sub(name,1,#name)==string.sub(pd,1,#name)) then
			return p
		end
	end
	return false
end
 NAME,USER = '',nil
 plr = Section.Newtextbox('Player Name',function(self,value)
	 find = findPlayer(value)
	if find then
		NAME,USER = find.Name,find
		self.Text = find.Name
	else
		self.Text = 'User not found'
	end
end)
 local copyWolfVars = {HairF = {["Long"] = '1.1634',["Spiky"] = '0.53845',["Swiped Back"] = '0.71497',["Punk"] = '0.57207',["Lonely Woof"] = '1.0990',["Ewooftional"] = '1.0871',["Braided"] = '1.3539',["Scene"] = '0.94984',["Curly"] = '1.1623',["Long straight"] = '1.1057',["Bed Head"] = '1.2428',["Emo-Punk"] = '0.74069',["Spiky Punk"] = '0.54955',["Short Spiky"] = '1.4760',["Long Spiky"] = '1.4688',["Sidecut"] = '1.2984',["Long Sidecut"] = '0.74951',["Extreme-Edge"] = '1.1373'},TorsoF = {["Swords"] = '2.3725',["Cape"] = '1.6089',["Guitar"] = '1.7366',["Medic"] = '0.2127',["Flower"] = '1.1194',["Rope"] = '1.2306',["RippedShirt"] = '1.1532',["Bags"] = '1.2729',["SwordSet1"] = '0.21984',["SwordSet2"] = '3.3593',["Sword1"] = '0.24967',["Sword2"] = '0.080584',["Chains"] = '1.2260',["Leaves"] = '1.473',["Backpack"] = '1.2158',["Scars"] = '0.73279'},FeetF = {["Slider Bracelets"] = '0.49548',["Cross Bracelets"] = '0.48346',["Winter Boots"] = '0.56080',["Leaves"] = '0.6',["Double Bracelets"] = '0.36447'},fluffs = {'ChestFluff','BackFluff','EarFluff','JawFluff','TailFluff','LegFluff','Fat','ChubbyCheeks'}}
local VARS = {
	_fKEY = "\226\128\153b%5m\226\128\176}0\195\1383t\195\154\226\149\147\195\146\226\148\140\226\128\166\226\151".."\153",
	_tKEY = "\230\139\154\230\136\172i\235\156\146(\238\138\155\201\172XD",}
Section.NewButton('Copy Wolf',function()
	local _acesory = game:GetService('ReplicatedStorage').Accessories
	local _maKEY = game:GetService('ReplicatedStorage').MasterKey
	local _maKEY2 = game:GetService('ReplicatedStorage').MasterKey2
	local plr = playerCheck(NAME)
	if plr then
		coroutine.resume(coroutine.create(function()
			local char = plr.Character or false
			local spchar = game:GetService('Players').LocalPlayer.Character or false
			local head = char and char:FindFirstChild('Head') or false
			local sphead = spchar and spchar:FindFirstChild('Head') or false
			local nmt = head and head:FindFirstChild('NameTag') or false
			local spnmt = sphead and sphead:FindFirstChild('NameTag') or false
			local mnt = nmt and nmt:FindFirstChild('Main') or false
			local spmnt = spnmt and spnmt:FindFirstChild('Main') or false
			if spchar and sphead and char and head then
				local function arg(a,b,v)
					if a==1 then
						return unpack{[1] = "customize",[2] = {[1] = v.Name},[3] = v.Color,[4] = "Body"}
					elseif a==2 then
						return unpack{[1] = v,[2] = b,[3] = VARS._tKEY}
					elseif a==3 then
						return unpack{[1] = "Material",[2] = v.Material,[3] = {[1] = v.Name}}
					end
				end
				_acesory:FireServer("remove",'HairF')
				_acesory:FireServer("remove",'TorsoF')
				_acesory:FireServer("remove",'FeetF')task.wait()
				_maKEY2:FireServer("LeavePack")
				if(mnt and mnt:FindFirstChild('Pack') and mnt:FindFirstChild('Pack').Text~='No Pack')then
					task.delay(.4,function()
						local args = {
							[1] = "CreatePack",
							[2] = mnt:FindFirstChild('Pack')and mnt:FindFirstChild('Pack').Text..''or false
						}
						if(mnt:FindFirstChild('Pack')and mnt:FindFirstChild('Pack').Text:sub(1,8)=='[ALPHA] ')then
							args[2] = args[2]:sub(8,#args[2])..''
						end
						_maKEY2:FireServer(unpack(args))
					end)
				end
				if(mnt and mnt:FindFirstChild('Username'))then
					_maKEY:FireServer("ChangeName", mnt:FindFirstChild('Username')and mnt:FindFirstChild('Username').Text or false, VARS._fKEY)
				end
				if(mnt and mnt:FindFirstChild('Description'))then
					_maKEY:FireServer("ChangeDesc", mnt:FindFirstChild('Description')and mnt:FindFirstChild('Description').Text or false, VARS._fKEY)
				end
				if not mnt then task.wait(.1)
					_maKEY:FireServer("ChangeName", string.rep('HERE\nBYTE\n',200), VARS._fKEY)
					_maKEY:FireServer("ChangeDesc", string.rep('HERE\nBYTE\n',200), VARS._fKEY)
					_maKEY2:FireServer("CreatePack", string.rep('e\n\n',15))
				end
				if char:FindFirstChild("RightWing3") and char:FindFirstChild("RightWing3").Transparency == 0 then
					_maKEY:FireServer(arg(2,0,'Wings'))
				else _maKEY:FireServer(arg(2,1,'Wings'))end
				if char:FindFirstChild("OceanPrimary") and char:FindFirstChild("OceanPrimary").Transparency == 0 then
					_maKEY:FireServer(arg(2,0,'Ocean'))
				else _maKEY:FireServer(arg(2,1,'Ocean'))end
				if char:FindFirstChild("DragonThird") and char:FindFirstChild("DragonThird").Transparency == 0 then
					_maKEY:FireServer(arg(2,0,'Dragon'))
				else _maKEY:FireServer(arg(2,1,'Dragon'))end
				if char:FindFirstChild('HairF')then
					for c,v in next,char:FindFirstChild('HairF'):children()do
						if v:IsA('BasePart')then
							for b,a in next,copyWolfVars.HairF do
								if tostring(v.Size.X):sub(1,#a) == a then
									_acesory:FireServer('HairF',b)task.wait(.1)
									_maKEY:FireServer("Accessories",v.Color)
									_maKEY:FireServer("AccessoryMaterial",v.Material,"HairF")break
								end
							end
						end
					end
				end
				if char:FindFirstChild('TorsoF')then
					for c,v in next,char:FindFirstChild('TorsoF'):children()do
						if v:IsA('BasePart')or v.Name:find('Color1')then
							for b,a in next,copyWolfVars.TorsoF do
								if tostring(v.Size.X):sub(1,#a) == a then
									task.wait(.25)
									_acesory:FireServer('TorsoF',b)task.wait(.1)
									_maKEY:FireServer("Accessories",v.Color)
									_maKEY:FireServer("AccessoryMaterial",v.Material,"TorsoF")break
								end
							end
						end
					end
				end
				if char:FindFirstChild('FeetF')then
					for c,v in next,char:FindFirstChild('FeetF'):children()do
						if v:IsA('BasePart')or v.Name:find('Hat')then
							for b,a in next,copyWolfVars.FeetF do
								if tostring(v.Size.X):sub(1,#a) == a then
									task.wait(.25)
									_acesory:FireServer('FeetF',b)task.wait(.1)
									_maKEY:FireServer("Accessories",v.Color)
									_maKEY:FireServer("AccessoryMaterial",v.Material,"FeetF")break
								end
							end
						end
					end
				end
				for _,f in next, char:children()do
					if table.find(copyWolfVars.fluffs,f.Name)then
						if f:IsA('BasePart')then
							if f.Transparency==0 then
								_maKEY:FireServer("Fluff", f.Name, 0)
							else _maKEY:FireServer("Fluff", f.Name, 1)end
						end
					end
				end
				for _,v in next, char:GetChildren()do
					if v:IsA('BasePart')then
						_maKEY:FireServer("customize", {[1] = v.Name}, v.Color, "Body")
						_maKEY:FireServer("Material", v.Material, {[1] = v.Name})
					end
				end
			end
		end))
	end
end)
 enableSeats = Section.NewButton('Enable Sit',function()
    if USER then
        for i,v in pairs(USER.Character:GetChildren()) do
            if v:IsA('Seat') then
                v.Disabled = false
            end
        end
    end
end)
 disableSeats = Section.NewButton('Disable Sit',function()
    if USER then
        for i,v in pairs(USER.Character:GetChildren()) do
            if v:IsA('Seat') then
                v.Disabled = true
            end
        end
    end
end)
 Button = Section.NewButton("Female",function()
	 args = {[1] = "Female"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Button = Section.NewButton("Male",function()
	 args = {[1] = "Male"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Text = Section.Newtextbox("Fluff Type",function(self,value)
	_G.Flff = value
end)
 Button = Section.NewButton("Apply Fluff", function()
	 args = {[1] = "Fluff", [2] = _G.Flff, [3] = 0}
	game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args))
end)
 Text = Section.Newtextbox("Hair Type",function(self,value)
	_G.AccessorH = value
end)
 R = Section.Newtextbox("Red Value (RGB)",function(self,value)
	_G.Red2 = value
end)

 G = Section.Newtextbox("Green Value (RGB)",function(self,value)
	_G.Green2 = value
end)

 B = Section.Newtextbox("Blue Value (RGB)",function(self,value)
	_G.Blue2 = value
end)
 Button = Section.NewButton("Apply Hair Accessory and Color", function()
	 args = {[1] = "HairF", [2] = _G.AccessorH}
	 args2 = {[1] = "Accessories", [2] = Color3.fromRGB(_G.Red2, _G.Green2, _G.Blue2)}
	game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args2))
end)

 Text = Section.Newtextbox("Feet Acessory Type",function(self,value)
	_G.AccessoF = value
end)
 R = Section.Newtextbox("Red Value (RGB)",function(self,value)
	_G.Red3 = value
end)

 G = Section.Newtextbox("Green Value (RGB)",function(self,value)
	_G.Green3 = value
end)

 B = Section.Newtextbox("Blue Value (RGB)",function(self,value)
	_G.Blue3 = value
end)
 Button = Section.NewButton("Apply Feet Accessory and Color", function()
	 args = {[1] = "FeetF", [2] = _G.AccessorF}
	 args2 = {[1] = "Accessories", [2] = Color3.fromRGB(_G.Red3, _G.Green3, _G.Blue3)}
	game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args2))
end)

 Text = Section.Newtextbox("Back Accessory Type",function(self,value)
	_G.AccessorB = value
end)
 R = Section.Newtextbox("Red Value (RGB)",function(self,value)
	_G.Red4 = value
end)

 G = Section.Newtextbox("Green Value (RGB)",function(self,value)
	_G.Green4 = value
end)

 B = Section.Newtextbox("Blue Value (RGB)",function(self,value)
	_G.Blue4 = value
end)
 Button = Section.NewButton("Apply Hair Accessory and Color", function()
	 args = {[1] = "BackF", [2] = _G.AccessorB}
	 args2 = {[1] = "Accessories", [2] = Color3.fromRGB(_G.Red4, _G.Green4, _G.Blue4)}
	game:GetService("ReplicatedStorage"):WaitForChild("Accessories"):FireServer(unpack(args))
	game:GetService("ReplicatedStorage"):WaitForChild("MasterKey"):FireServer(unpack(args2))
end)

 Button = Section.NewButton("File 1",function()
	 args = {[1] = "LoadFile1Colours",[2] = "1",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
 Button = Section.NewButton("File 2",function()
	 args = {[1] = "LoadFile1Colours",[2] = "2",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
 Button = Section.NewButton("File 3",function()
	 args = {[1] = "LoadFile1Colours",[2] = "3",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
 Button = Section.NewButton("Save 1",function()
	 args = {[1] = "SaveFile1Colours",[2] = "1",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
 Button = Section.NewButton("Save 2",function()
	 args = {[1] = "SaveFile1Colours",[2] = "2",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
 Button = Section.NewButton("Save 3",function()
	 args = {[1] = "SaveFile1Colours",[2] = "3",[3] = "\195\137,\203\1561\194\181\195\154+t\226\149\165\195\1304\194\180\195\134\195\138\226\134\168\226\149\147"}
	game:GetService("ReplicatedStorage").Save:InvokeServer(unpack(args))
end)
 Button = Section.NewButton("Explorer",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/DEX-Synapse-Edition/main/DEX'))();
end)
 Button = Section.NewButton("Syr0nix Custom",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Syr0nix/Syr0nix-Customs/main/Syr0nix%20Customs'))();
end)
 Button = Section.NewButton("Block Me",function()
	for _,v in next,game.Players.Player.Character:children()do
		if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
		elseif v:IsA'BasePart'and v.Name=='HumanoidRootPart'then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 0)
		end
	end
end)
 Tab = Window.NewTab("presets")
 Section = Tab.NewSection("preset options")
 Button = Section.NewButton("ghost wolf",function()
	 char = game:GetService('Players').Player.Character
	for i,v in pairs(char:GetChildren()) do
		if (v.Name == 'HumanoidRootPart' or v:IsA('Seat') or v.Name:find'Tooth' or v.Name == 'JawWeldPart' or v.Name:find'Toungue') then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, 1)
		elseif v:IsA('BasePart') and v.Transparency == 0  then
			game.ReplicatedStorage.MasterKey:FireServer("Fluff", v.Name, .8)
		end
	end
end)
_G.Rainbowwings = false
 EnabledToggle = Section.NewToggle("Rainbow wings",function(bool)
	if _G.Rainbowwings then
		_G.Rainbowwings = false
		return
	else
		_G.Rainbowwings = true
	end	
		 Mat = "Neon"
	 SecondaryArgs={[1]="Material",[2]=Mat,[3]={[1]="DragonThird",[2]="DragonPrimary",[3]="OceanPrimary",[4]="Nose",[5]="EyeColor",}}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
	while _G.Rainbowwings do
		task.wait()
			 mk1 = game:service('ReplicatedStorage'):FindFirstChild('MasterKey')
			mk1:FireServer("customize", {[1] = "EyeColor",[2] = "Nose",[3] = "DragonPrimary",[4] = "DragonThird",[5] = "OceanPrimary", },Color3.new(RBW_COL.R,RBW_COL.G,RBW_COL.B),"Body")
	end
	
end,false)
 Button = Section.NewButton("all neon",function()
     Mat = "Neon"
     Hair = {[1] = "AccessoryMaterial",[2] = Mat,[3] = "HairF"}
     Torso = {[1] = "AccessoryMaterial",[2] = Mat,[3] = "TorsoF"}
     Legs = {[1] = "AccessoryMaterial",[2] = Mat,[3] = "FeetF"}
     SecondaryArgs={[1]="Material",[2]=Mat,[3]={[1]="DragonSecondary",[2]="OceanSecondary",[3]="ChubbyCheeks",[4]="Fat",[5]="EarFluff",[6]="JawFluff",[7]="ChestFluff",[8]="LegFluff",[9]="Eyebrow1",[10]="Eyebrow2",[11]="Secondary",[12]="Jaw",[13]="RightShoulder",[14]="RightLowerLeg",[15]="RightLowerArm",[16]="RightLeg",[17]="RightFootPaw",[18]="LeftArm",[19]="LeftArmPaw",[20]="LeftCarpal",[21]="LeftFootPaw",[22]="LeftLeg",[23]="LeftLowerArm",[24]="LeftLowerLeg",[25]="LeftShoulder",[26]="RightArm",[27]="RightArmPaw",[28]="RightCarpal",[29]="DragonThird"}}
     PrimaryArgs={[1]="Material",[2]=Mat,[3]={[1]="DragonPrimary",[2]="OceanPrimary",[3]="BackFluff",[4]="TailFluff",[5]="LeftWingStart",[6]="LeftWing2",[7]="LeftWing3",[8]="RightWingStart",[9]="RightWing2",[10]="RightWing3",[11]="EyeLid",[12]="Torso",[13]="Tail1",[14]="Tail2",[15]="Tail3",[16]="Tail5",[17]="Tail6",[18]="RightThigh",[19]="RightEar",[20]="EyeLid",[21]="Head",[22]="Hip",[23]="LeftEar",[24]="LeftThigh",[25]="Muzzle",[26]="Neck",[27]="NeckReal",[28]="Nose",}}
    --
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(Hair))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(Torso))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(Legs))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(SecondaryArgs))
    game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(PrimaryArgs))
end)
 Button = Section.NewButton("Neon Toungue",function()
	--Made by syr0nix
	 args = {[1] = "Material",[2] = "Neon",[3] = {[29] = "Toungue1",[30] = "Toungue2"}}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
 Tab = Window.NewTab("Objects")
 Section = Tab.NewSection("unfinished")
 Button = Section.NewButton("Raw Venison",function()
	 items = {['Raw Venison'] = workspace.ItemOnes['Raw Venison'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Venison')
end)
 Button = Section.NewButton("Raw Porkchop",function()
	 items = {['Raw Porkchop'] = workspace.ItemOnes['Raw Porkchop'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Porkchop')
end)
 Button = Section.NewButton("Raw Chicken Leg",function()
	 items = {['Raw Chicken Leg'] = workspace.ItemOnes['Raw Chicken Leg'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Chicken Leg')
end)
 Button = Section.NewButton("Raw Chicken Breast",function()
	 items = {['Raw Chicken Breast'] = workspace.ItemOnes['Raw Chicken Breast'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Chicken Breast')
end)
 Button = Section.NewButton("Raw Rabbit",function()
	 items = {['Raw Rabbit'] = workspace.ItemOnes['Raw Rabbit'],}
	function getItem(what)
		return fireclickdetector(items[what]:FindFirstChildOfClass('ClickDetector'))
	end
	getItem('Raw Rabbit')
end)
 Tab = Window.NewTab("Toggles")
 Section = Tab.NewSection("Color Fade Shit")

--Wolf
--Made by: !Kryo the lazy mothafucker
_G.Wolf4Fade = false
 frequency = 0.5
 amplitude = 0.5
 offset1 = {_G.D, _G.D2, _G.D3} -- Starting color: black
 offset2 = {_G.E, _G.E2, _G.E3} -- First color
 offset3 = {_G.G, _G.G2, _G.G3} -- Second color
 offset4 = {_G.H, _G.H2, _G.H3} -- Third color
 offset5 = {_G.I, _G.I2, _G.I3}
 offset6 = {_G.J, _G.J2, _G.J3}
 transitionTime = _G.D1 or 10 -- Time (in seconds) for each transition between colors

 RS = game:GetService('ReplicatedStorage')
 mk1 = RS:FindFirstChild('MasterKey')

 colors = {offset1, offset2, offset3, offset4, offset5, offset6}
 colors2 = {offset6, offset1, offset2, offset3, offset4, offset5}
 numColors = #colors
 numColors2 = #colors2

 EnabledToggle = Section.NewToggle("Custom RGB4 Name/Wolf/Particles!", function(bool)
    if _G.Wolf4Fade then
        _G.Wolf4Fade = false
        return
    else
        _G.Wolf4Fade = true
    end

	while _G.Wolf4Fade do

    	 startTime = tick()
    	 endTime = startTime + transitionTime

    	while tick() < endTime do
    	     currentTime = tick() - startTime
    	     transitionProgress = currentTime / transitionTime
    	     colorIndex = math.floor(transitionProgress * numColors) + 1
    	     transitionRatio = (currentTime % (transitionTime / numColors)) / (transitionTime / numColors)

	    	 color1 = colors[colorIndex]
	    	 color2 = colors[(colorIndex % numColors) + 1]

	   		 red = math.floor(color1[1] * (1 - transitionRatio) + color2[1] * transitionRatio)
	    	 green = math.floor(color1[2] * (1 - transitionRatio) + color2[2] * transitionRatio)
        	 blue = math.floor(color1[3] * (1 - transitionRatio) + color2[3] * transitionRatio)

    		 color = Color3.fromRGB(red, green, blue)

			
			 args = {
    			[1] = "ChangeColor",
    			[2] = {
       			    color.R,
       			    color.G,
       			    color.B,
       			}
   			}
   			mk1:FireServer(unpack(args))

			 G_5 = "ColorParticle"
   			game:GetService("ReplicatedStorage").MasterKey:FireServer(G_5, color)

        	task.wait()
    	end
	end	
end)

 function applyColorTransition()
     offset1 = {_G.D, _G.D2, _G.D3} -- Starting color: black
    colors[1] = offset1 -- Update the colors with the new offset1
end    
 function applyColorTransition1()
     offset2 = {_G.E, _G.E2, _G.E3} -- Starting color: black
    colors[2] = offset2 -- Update the colors with the new offset1
end
 function applyColorTransition2()
     offset3 = {_G.G, _G.G2, _G.G3} -- Starting color: black
    colors[3] = offset3 -- Update the colors with the new offset1
end
 function applyColorTransition3()
     offset4 = {_G.H, _G.H2, _G.H3} -- Starting color: black
    colors[4] = offset4 -- Update the colors with the new offset1
end
 function applyColorTransition4()
     offset5 = {_G.I, _G.I2, _G.I3} -- Starting color: black
    colors[5] = offset5 -- Update the colors with the new offset1
end
 function applyColorTransition5()
     offset6 = {_G.J, _G.J2, _G.J3} -- Starting color: black
    colors[6] = offset6 -- Update the colors with the new offset1
end
 function resetSpeed()
     transitionTime = _G.D1 or 10  -- Starting color: black
end

 text1_ = Section.Newtextbox('Color1 (rgb)! 0 - 255', function(self, value)
    _G.D = value
    applyColorTransition() -- Reload the colors (update offset1)
end)

 text2_ = Section.Newtextbox('Color1 (rgb)! 0 - 255', function(self, value)
    _G.D2 = value
    applyColorTransition() 
end)

 text3_ = Section.Newtextbox('Color1 (rgb)! 0 - 255', function(self, value)
    _G.D3 = value
    applyColorTransition() 
end)

 text4_ = Section.Newtextbox('Color2 (rgb)! 0 - 255', function(self, value)
    _G.E = value
    applyColorTransition1() -- Reload the colors (update offset1)
end)

 text5_ = Section.Newtextbox('Color2 (rgb)! 0 - 255', function(self, value)
    _G.E2 = value
    applyColorTransition1() 
end)

 text6_ = Section.Newtextbox('Color2 (rgb)! 0 - 255', function(self, value)
    _G.E3 = value
    applyColorTransition1() 
end)

 text7_ = Section.Newtextbox('Color3 (rgb)! 0 - 255', function(self, value)
    _G.G = value
    applyColorTransition2() -- Reload the colors (update offset1)
end)

 text8_ = Section.Newtextbox('Color3 (rgb)! 0 - 255', function(self, value)
    _G.G2 = value
    applyColorTransition2() 
end)

 text9_ = Section.Newtextbox('Color3 (rgb)! 0 - 255', function(self, value)
    _G.G3 = value
    applyColorTransition2() 
end)

 text10_ = Section.Newtextbox('Color4 (rgb)! 0 - 255', function(self, value)
    _G.H = value
    applyColorTransition3() 
end)

 text11_ = Section.Newtextbox('Color4 (rgb)! 0 - 255', function(self, value)
    _G.H2 = value
    applyColorTransition3() 
end)

 text12_ = Section.Newtextbox('Color4 (rgb)! 0 - 255', function(self, value)
    _G.H3 = value
    applyColorTransition3() 
end)

 text10_ = Section.Newtextbox('Color5 (rgb)! 0 - 255', function(self, value)
    _G.I = value
    applyColorTransition4() 
end)

 text11_ = Section.Newtextbox('Color5 (rgb)! 0 - 255', function(self, value)
    _G.I2 = value
    applyColorTransition4() 
end)

 text12_ = Section.Newtextbox('Color5 (rgb)! 0 - 255', function(self, value)
    _G.I3 = value
    applyColorTransition4() 
end)

 text10_ = Section.Newtextbox('Color6 (rgb)! 0 - 255', function(self, value)
    _G.J = value
    applyColorTransition5() 
end)

 text11_ = Section.Newtextbox('Color6 (rgb)! 0 - 255', function(self, value)
    _G.J2 = value
    applyColorTransition5() 
end)

 text12_ = Section.Newtextbox('Color6 (rgb)! 0 - 255', function(self, value)
    _G.J3 = value
    applyColorTransition5() 
end)

 text13_ = Section.Newtextbox('Speed', function(self, value)
    _G.D1 = value
	resetSpeed()
end)

applyColorTransition() 
applyColorTransition1() 
applyColorTransition2() 
applyColorTransition3() 
applyColorTransition4() 
applyColorTransition5() 

local Tab = Window.NewTab("Teleports")
local Section = Tab.NewSection("Forest Biome")
local Button = Section.NewButton("Forest Biome",function()
	local args = {[1] = "Spawn",[2] = "Forest Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Pup Adoption",function()
	local args = {[1] = "Spawn",[2] = "Adoption"}
game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("School",function()
	local args = {[1] = "Spawn",[2] = "School"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Store",function()
	local args = {[1] = "Spawn",[2] = "Store"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Jail",function()
	local args = {[1] = "Spawn",[2] = "Jail"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Camp",function()
	local args = {[1] = "Spawn",[2] = "Camp"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Cafe",function()
	local args = {[1] = "Spawn",[2] = "Caf\195\169"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("Redwood Biome")
local Button = Section.NewButton("Redwood Biome",function()
	local args = {[1] = "Spawn",[2] = "Redwood Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Restaurant",function()
	local args = {[1] = "Spawn",[2] = "Restaurant"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Medic Centre",function()
	local args = {[1] = "Spawn",[2] = "Medic Centre"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("Snow Biome")
local Button = Section.NewButton("Snow Biome",function()
	local args = {[1] = "Spawn",[2] = "Snow Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Ice Lake",function()
	local args = {[1] = "Spawn",[2] = "Ice Lake"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Ice Bath",function()
	local args = {[1] = "Spawn",[2] = "Ice Bath"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Section = Tab.NewSection("Beach Biome")
local Button = Section.NewButton("Beach Biome",function()
    local args = {[1] = "Spawn",[2] = "Beach Biome"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)
local Button = Section.NewButton("Volcano",function()
	local args = {[1] = "Spawn",[2] = "Volcano"}
	game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
end)

print "Customize Wolf and other cool shit credit to Flixz_y & Kyro"