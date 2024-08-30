local advanced = false

function test(name,func)
    if func then print(name .. " ✅") else print(name .. " ⛔") end
end

function dottest(func)
    if func == cache.invalidate then
        print('g')
    end
end

if advanced then

else
test(cache.invalidate) test(cache.iscached) test(cache.replace) test(cloneref) test(compareinstances) test(checkcaller) test(clonefunction) test(getcallingscript) test(getscriptclosure) test(hookfunction) test(iscclosure) test(islclosure) test(isexecutorclosure) test(loadstring) test(newcclosure) test(rconsoleclear) test(rconsolecreate) test(rconsoledestroy) test(rconsoleinput) test(rconsoleprint) test(rconsolesettitle) test(crypt.base64encode) test(crypt.base64decode) test(crypt.decrypt) test(crypt.generatebytes) test(crypt.generatekey) test(crypt.hash) test(debug.getconstant) test(debug.getconstants) test(debug.getinfo) test(debug.getproto) test(debug.getprotos) test(debug.getstack) test(debug.getupvalue) test(debug.getupvalues) test(debug.setconstant) test(debug.setstack) test(debug.setupvalue) test(readfile) test(listfiles) test(writefile) test(makefolder) test(appendfile) test(isfile) test(isfolder) test(delfolder) test(delfile) test(loadfile) test(dofile) test(isrbxactive) test(mouse1click) test(mouse1press) test(mouse1release) test(mouse2click) test(mouse2press) test(mouse2release) test(mousemoveabs) test(mousemoverel) test(mousescroll) test(fireclickdetector) test(getcallbackvalue) test(getconnections) test(getcustomasset) test(gethiddenproperty) test(sethiddenproperty) test(gethui) test(getinstances) test(getnilinstances) test(isscriptable) test(setscriptable) test(setrbxclipboard) test(getrawmetatable) test(hookmetamethod) test(getnamecallmethod) test(isreadonly) test(setrawmetatable) test(setreadonly) test(identifyexecutor) test(lz4compress) test(lz4decompress) test(messagebox) test(queue_on_teleport) test(request) test(setclipboard) test(setfpscap) test(getgc) test(getgenv) test(getloadedmodules) test(getrenv) test(getrunningscripts) test(getscriptbytecode) test(getscripthash) test(getscripts) test(getsenv) test(getthreadidentity) test(setthreadidentity) test(Drawing) test(Drawing.new) test(Drawing.Fonts) test(isrenderobj) test(getrenderproperty) test(setrenderproperty) test(cleardrawcache) test(WebSocket) test(WebSocket.connect)
end
