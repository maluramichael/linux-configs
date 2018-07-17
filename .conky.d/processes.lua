function conky_format( format, number )
    return string.format( format, conky_parse( number ) )
end

function conky_pad( number )
    return string.format( '%3i' , conky_parse( number ) )
end

function string:split(delimiter)
    local result = { }
    local from = 1
    local delim_from, delim_to = string.find( self, delimiter, from )
    while delim_from do
        table.insert( result, string.sub( self, from , delim_from-1 ) )
        from = delim_to + 1
        delim_from, delim_to = string.find( self, delimiter, from )
    end
    table.insert( result, string.sub( self, from ) )
    return result
end--of function

local df_content = "Loading..."
local processes_content = "Loading..."

function call_df()
    local file = io.popen("df -h | grep -vv Filesystem | awk '{print $6}' | sort | uniq")
    local df_output = file:read("*a")
    df_content = "         USED       SIZE MOUNT\n------------------------\n"
    
    local chunks = string.split(df_output, "\n")
    table.remove(chunks, table.getn(chunks))
    for i, s in ipairs(chunks) do
        df_content = df_content.."${fs_bar 9,30 "..s.."} ${lua_parse format %8s ${fs_used "..s.."}} / ${lua_parse format %8s ${fs_size "..s.."}} "..s
        if i ~= table.getn(chunks) then
            df_content = df_content.."\n"
        end
    end
    file:close()
end

function call_process(n)
    processes_content = "   CPU    MEM      TIME NAME\n-----------------------\n"
    for i = 1, tonumber(n) do
        processes_content = processes_content.."${top cpu "..tostring(i).."} ${top mem "..tostring(i).."} ${top time "..tostring(i).."} ${top name "..tostring(i).."} "
        if i ~= tonumber(n) then
            processes_content = processes_content.."\n"
        end
    end
end

call_df()
call_process(10)

function conky_processes(n)
    local updates = tonumber(conky_parse("${updates}"))
    local interval=10
    local timer=(updates % interval)
    if timer==0 then
        call_process(n)
    end
    return processes_content
end

function conky_filesystem()
    local updates = tonumber(conky_parse("${updates}"))
    local interval=30
    local timer=(updates % interval)
    if timer==0 then
        call_df()
    end
    return df_content
end

function conky_cpus()
    output = "         CORE  LOAD\n-------------------\n"
    for i = 1,4 do
        output = output.."${cpubar cpu"..tostring(i).." 9, 88} "..i.." ${lua_parse format %5s ${cpu cpu"..tostring(i).."}%}"
        if i ~= 4 then
            output = output.."\n"
        end
    end
    return output
end