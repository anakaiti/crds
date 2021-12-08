local crds = (import "crds.json").items;

local formatName(crd) = 
    std.strReplace(crd.metadata.name, ".", "-") + ".yaml";


{   
    [formatName(crd)]: crd for crd in crds
}