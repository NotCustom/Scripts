msg = {
["content"] = _G.message,
}

local response = syn.request(
{
Url = _G.link,
Method = "POST",
Headers = {
["Content-Type"] = "application/json"
},
Body = game:GetService("HttpService"):JSONEncode(msg)
}
)