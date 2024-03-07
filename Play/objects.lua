local utils = require "utils"

local Objects = {}
function Objects.new(classes)
  local new_class = {classes = classes}
  function new_class.new()
    return setmetatable({}, {__index = new_class})
  end
  setmetatable(new_class, {__index = Objects})
  return new_class
end
function Objects:source()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:source())
  end
  return t
end
function Objects:image()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:image())
  end
  return t
end
function Objects:imageset()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:imageset())
  end
  return t
end
function Objects:value()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:value())
  end
  return t
end
function Objects:text()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:text())
  end
  return t
end
function Objects:slider()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:slider())
  end
  return t
end
function Objects:hiddenCover()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:hiddenCover())
  end
  return t
end
function Objects:liftCover()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:liftCover())
  end
  return t
end
function Objects:graph()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:graph())
  end
  return t
end
function Objects:gaugegraph()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:gaugegraph())
  end
  return t
end

function Objects:gauge()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:gauge())
  end
  return t
end
function Objects:judge()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:judge())
  end
  return t
end
function Objects:bga()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:bga())
  end
  return t
end
function Objects:judgegraph()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:judgegraph())
  end
  return t
end
function Objects:bpmgraph()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:bpmgraph())
  end
  return t
end
function Objects:timingvisualizer()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:timingvisualizer())
  end
  return t
end
function Objects:destination()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:destination())
  end
  return t
end
function Objects:note()
  local t = {}
  for i = 1, #self.classes do
    utils.mergeArray(t, self.classes[i]:note())
  end
  return t
end

return Objects