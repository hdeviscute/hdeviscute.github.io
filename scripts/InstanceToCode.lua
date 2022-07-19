function toCode(instance: Instance)
    local UsedGuids = {}
    local function ConvertToCode(i)
        local guid 
        repeat guid = game:GetService("HttpService"):GenerateGUID(false) until not UsedGuids[guid]
        local code = "local " .. guid .. " = Instance.new(" .. i.ClassName .. ", " .. i.Parent:GetFullName() .. ")"
        loadstring([[for ]].. (KRNL_LOADED and "property, _" or "_, property") ..[[ in pairs(getproperties(i)) do
                if property ~= "Parent" and property ~= "Source" and not (xpcall(function() game:FindService(property) return true end, function() return false end)) then
                    value = (xpcall(function() return tostring(i[property]) end, function() return tostring(gethiddenproperty(i, property)) end))
                    code = code .. "\n" .. guid .. "['" .. property .. "'] = " .. typeof(value) == "Instance" and value:GetFullName() or tostring(value)
                end
        end]])()
    
        if i:IsA("LocalScript") then
            code = code .. "\n" .. "coroutine.create(function()\n" .. decompile(instance) .. "\nend)"
        end
        table.insert(UsedGuids, guid)
        return code
    end
    if #(instance:GetChildren())~= 0 then return ConvertToCode(instance) end
    local code = ConvertToCode(instance) .. "\n\n"
    for _, child in pairs(instance:GetDescendants()) do
        code = code .. "-- "..child.Name .. ConvertToCode(child) .. "\n\n"
    end
end

return toCode
