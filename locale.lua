-- global variable for locales
Locales = {nl}

-- this is for translation
function _U(str, ...)
    local text = Locales[Config.Locale][str]
    return string.format(text, ...)
end