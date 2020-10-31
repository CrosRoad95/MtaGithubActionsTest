function test()
    local a = createElement("test")
    setElementData(a, "a", "a")
    assert(getElementData(a, "a") == "b")
    
    return 1
end

function endTest(result)
    local f = fileCreate("result.txt")
    fileWrite(f, tostring(result))
    fileClose(f)
    shutdown("test ended")
end

result = {pcall(test)}
if(result[1])then
    iprint("test passed")
    endTest(0)
else
    iprint("test failed", result)
    endTest(1)
end
