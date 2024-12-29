local function showMessage()
    StaticPopupDialogs["JOTO_MESSAGE"] = {
        text = "¡Nomo joto nomo culon, subiste de nivel pinchi joto cabron!!!!",
        button1 = "Acepto k soy joto",
        OnAccept = function() end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true
    }

    StaticPopup_Show("JOTO_MESSAGE")
end

local function onEvent(self, event, arg1)
    if event == "PLAYER_LEVEL_UP" then
        showMessage()  
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LEVEL_UP") 
frame:SetScript("OnEvent", onEvent)  

