local BLOCK_BYTE = 16
local _M = {}
function _M.bin2arr(s)
    local t = {}
    for i = 1, string.len(s) do
        table.insert(t, string.byte(string.sub(s, i, i)))
    end
    return t
end

function _M.padding(s)
    local p_num = 16 - (string.len(s) % BLOCK_BYTE)
    local pad_s = string.rep(string.char(p_num), p_num)
    return s .. pad_s
end

function _M.unpadding(s)
    local p_num = string.byte(s, -1) + 1
    return string.sub(s, 1, -p_num)
end

function _M.hex2bin(hex_str)
    return (hex_str:gsub('..', function(cc)
        return string.char(tonumber(cc, 16))
    end))
end
return _M