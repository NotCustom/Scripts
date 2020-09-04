msg = {
["content"] = "YOURMESSAGE",
}

local response = syn.request(
{
Url = "DISCORDWEBHOOKLINK",
Method = "POST", -- Change "POST" to "DELETE" to delete the webhook
Headers = {
["Content-Type"] = "application/json"
},
Body = game:GetService("HttpService"):JSONEncode(msg)
}
)
