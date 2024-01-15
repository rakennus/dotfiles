function conky_downspeedf_mbps()
    return math.floor(conky_parse("${downspeedf wlp3s0}") / 10) / 100
end
