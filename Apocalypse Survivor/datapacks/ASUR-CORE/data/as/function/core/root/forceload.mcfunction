say Adding ROOT to forceload

data modify storage dlm: ticket set value {dimension:"overworld",id:"as:ROOT",life:{type:"indefinite"},on_load:"say ROOT loaded",pos:[0,0]}
function dlm:new_ticket