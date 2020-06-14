--[[
	Message Translator
	Made by Aim#3750
--]]

local YourLang = "en" -- Language code that the messages are going to be translated to
local key = "trnsl.1.1.20170425T085917Z.580fec9ed721d387.9caf5bd2514ca1581b95de321974dce826ef5064" -- You can use this Yandex API Key or get another one

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")
local HttpService = game:GetService("HttpService")
local properties = {
	Color = Color3.new(1,1,0);
	Font = Enum.Font.SourceSansItalic;
	TextSize = 16;
}

function unescape(str) -- Not mine
    str = string.gsub( str, '&nbsp;', ' ')
    str = string.gsub( str, '&iexcl;', '¡')
    str = string.gsub( str, '&cent;', '¢')
    str = string.gsub( str, '&pound;', '£')
    str = string.gsub( str, '&curren;', '¤')
    str = string.gsub( str, '&yen;', '¥')
    str = string.gsub( str, '&brvbar;', '¦')
    str = string.gsub( str, '&sect;', '§')
    str = string.gsub( str, '&uml;', '¨')
    str = string.gsub( str, '&copy;', '©')
    str = string.gsub( str, '&ordf;', 'ª')
    str = string.gsub( str, '&laquo;', '«')
    str = string.gsub( str, '&not;', '¬')
    str = string.gsub( str, '&shy;', '­')
    str = string.gsub( str, '&reg;', '®')
    str = string.gsub( str, '&macr;', '¯')
    str = string.gsub( str, '&deg;', '°')
    str = string.gsub( str, '&plusmn;', '±')
    str = string.gsub( str, '&sup2;', '²')
    str = string.gsub( str, '&sup3;', '³')
    str = string.gsub( str, '&acute;', '´')
    str = string.gsub( str, '&micro;', 'µ')
    str = string.gsub( str, '&para;', '¶')
    str = string.gsub( str, '&middot;', '·')
    str = string.gsub( str, '&cedil;', '¸')
    str = string.gsub( str, '&sup1;', '¹')
    str = string.gsub( str, '&ordm;', 'º')
    str = string.gsub( str, '&raquo;', '»')
    str = string.gsub( str, '&frac14;', '¼')
    str = string.gsub( str, '&frac12;', '½')
    str = string.gsub( str, '&frac34;', '¾')
    str = string.gsub( str, '&iquest;', '¿')
    str = string.gsub( str, '&Agrave;', 'À')
    str = string.gsub( str, '&Aacute;', 'Á')
    str = string.gsub( str, '&Acirc;', 'Â')
    str = string.gsub( str, '&Atilde;', 'Ã')
    str = string.gsub( str, '&Auml;', 'Ä')
    str = string.gsub( str, '&Aring;', 'Å')
    str = string.gsub( str, '&AElig;', 'Æ')
    str = string.gsub( str, '&Ccedil;', 'Ç')
    str = string.gsub( str, '&Egrave;', 'È')
    str = string.gsub( str, '&Eacute;', 'É')
    str = string.gsub( str, '&Ecirc;', 'Ê')
    str = string.gsub( str, '&Euml;', 'Ë')
    str = string.gsub( str, '&Igrave;', 'Ì')
    str = string.gsub( str, '&Iacute;', 'Í')
    str = string.gsub( str, '&Icirc;', 'Î')
    str = string.gsub( str, '&Iuml;', 'Ï')
    str = string.gsub( str, '&ETH;', 'Ð')
    str = string.gsub( str, '&Ntilde;', 'Ñ')
    str = string.gsub( str, '&Ograve;', 'Ò')
    str = string.gsub( str, '&Oacute;', 'Ó')
    str = string.gsub( str, '&Ocirc;', 'Ô')
    str = string.gsub( str, '&Otilde;', 'Õ')
    str = string.gsub( str, '&Ouml;', 'Ö')
    str = string.gsub( str, '&times;', '×')
    str = string.gsub( str, '&Oslash;', 'Ø')
    str = string.gsub( str, '&Ugrave;', 'Ù')
    str = string.gsub( str, '&Uacute;', 'Ú')
    str = string.gsub( str, '&Ucirc;', 'Û')
    str = string.gsub( str, '&Uuml;', 'Ü')
    str = string.gsub( str, '&Yacute;', 'Ý')
    str = string.gsub( str, '&THORN;', 'Þ')
    str = string.gsub( str, '&szlig;', 'ß')
    str = string.gsub( str, '&agrave;', 'à')
    str = string.gsub( str, '&aacute;', 'á')
    str = string.gsub( str, '&acirc;', 'â')
    str = string.gsub( str, '&atilde;', 'ã')
    str = string.gsub( str, '&auml;', 'ä')
    str = string.gsub( str, '&aring;', 'å')
    str = string.gsub( str, '&aelig;', 'æ')
    str = string.gsub( str, '&ccedil;', 'ç')
    str = string.gsub( str, '&egrave;', 'è')
    str = string.gsub( str, '&eacute;', 'é')
    str = string.gsub( str, '&ecirc;', 'ê')
    str = string.gsub( str, '&euml;', 'ë')
    str = string.gsub( str, '&igrave;', 'ì')
    str = string.gsub( str, '&iacute;', 'í')
    str = string.gsub( str, '&icirc;', 'î')
    str = string.gsub( str, '&iuml;', 'ï')
    str = string.gsub( str, '&eth;', 'ð')
    str = string.gsub( str, '&ntilde;', 'ñ')
    str = string.gsub( str, '&ograve;', 'ò')
    str = string.gsub( str, '&oacute;', 'ó')
    str = string.gsub( str, '&ocirc;', 'ô')
    str = string.gsub( str, '&otilde;', 'õ')
    str = string.gsub( str, '&ouml;', 'ö')
    str = string.gsub( str, '&divide;', '÷')
    str = string.gsub( str, '&oslash;', 'ø')
    str = string.gsub( str, '&ugrave;', 'ù')
    str = string.gsub( str, '&uacute;', 'ú')
    str = string.gsub( str, '&ucirc;', 'û')
    str = string.gsub( str, '&uuml;', 'ü')
    str = string.gsub( str, '&yacute;', 'ý')
    str = string.gsub( str, '&thorn;', 'þ')
    str = string.gsub( str, '&yuml;', 'ÿ')
    str = string.gsub( str, '&euro;', '€')
    str = string.gsub( str, '&#(%d+);', function(n) return string.char(n) end )
    str = string.gsub( str, '&#x(%d+);', function(n) return string.char(tonumber(n,16)) end )
    str = string.gsub( str, '&amp;', '&' )
    return str
end

function translate(message)
	local URL = "https://translate.yandex.net/api/v1.5/tr.json/detect?key="..key.."&text="..message
    local lang = HttpService:JSONDecode(game:HttpGet(URL)).lang
    local translation
    if lang and lang ~= YourLang then
        local URL = "https://translate.yandex.net/api/v1.5/tr.json/translate?key="..key.."&text="..message.."&lang="..lang.."-"..YourLang
        translation = HttpService:JSONDecode(game:HttpGet(URL)).text[1]
    end
	return translation
end

function get(plr, msg)
	local translation = translate(msg)
	if translation then
	    print(translation)
		properties.Text = "[".. plr.Name .."]: "..translation
		StarterGui:SetCore("ChatMakeSystemMessage", properties)
	end
end

for i, plr in ipairs(Players:GetPlayers()) do
	plr.Chatted:Connect(function(msg)
		get(plr, msg)
	end)
end
Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		get(plr, msg)
	end)
end)
