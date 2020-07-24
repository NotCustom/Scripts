msg = {
["content"] = "YOURMESSAGE",
}

local response = syn.request(
{
Url = "DISCORDWEBHOOKLINK",
Method = "POST",
Headers = {
["Content-Type"] = "application/json"
},
Body = game:GetService("HttpService"):JSONEncode(msg)
}
)
