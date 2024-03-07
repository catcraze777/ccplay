local Object = {}
function Object.new()
  local new_class = {}
  function new_class.new()
    return setmetatable({}, {__index = new_class})
  end
  setmetatable(new_class, {__index = Object})
  return new_class
end

function Object.source() return{} end
function Object.image() return{} end
function Object.imageset() return{} end
function Object.value() return{} end
function Object.text() return{} end
function Object.slider() return{} end
function Object.hiddenCover() return{} end
function Object.liftCover() return{} end
function Object.graph() return{} end
function Object.gaugegraph() return{} end
function Object.gauge() return{} end
function Object.judge() return{} end
function Object.bga() return{} end
function Object.judgegraph() return{} end
function Object.bpmgraph() return{} end
function Object.timingvisualizer() return{} end
function Object.destination() return{} end
function Object.note() return{} end

return Object