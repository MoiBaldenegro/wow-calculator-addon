
local function showMessage()
    StaticPopupDialogs["JOTO_MESSAGE"] = {
        text = "¡Nomo joto nomo culon!!!!",
        button1 = "Acepto k soy joto",
        OnAccept = function() end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true
    }

    StaticPopup_Show("JOTO_MESSAGE")
end

-- Registrar el comando /joto
SLASH_JOTO1 = "/joto"
SlashCmdList["JOTO"] = mostrarMensaje
