function conky_downspeed_mb(net)
    return math.floor(conky_parse("${downspeedf " .. net .. "}") / 10) / 100
end

function conky_upspeed_mb(net)
    return math.floor(conky_parse("${upspeedf " .. net .. "}") / 10) / 100
end
