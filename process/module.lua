local _0RBIT = { _version = "0.0.1", process = "WSXUI2JjYUldJ7CKq9wE1MGwXs-ldzlUlHOQszwQe0s" }

function _0RBIT.get(url)
    if type(url) ~= "string" then
        return "Error: First argument must be a string"
    end
    Send({
        Target = _0RBIT.process,
        Action = "Get-Real-Data",
        Url = url
    })
end

function _0RBIT.post(url, body)
    if type(url) ~= "string" then
        return "Error: First argument must be a string"
    end
    if type(body) ~= "table" then
        return "Error: Second argument must be a table"
    end
    local json = require("json")
    Send({
        Target = _0RBIT.process,
        Action = "Post-Real-Data",
        Url = url,
        Body = json.encode(body)
    })
end
