# a simple script that upgrades pre minecraft 1.21.2/3 recipes to 1.21.2/3 recipes
# author: fishbowlforever

import json
import os
from glob import iglob

oldPath = "skyArtifacts1.21/data/sky_artifacts/recipe/"
newPath = "skyArtifacts1.21.4/data/sky_artifacts/recipe/"

def upgrade(data):
    match type(data).__name__:
        case "list":
            newdata = []
            for datum in data:
                datum = upgrade(datum)
                newdata.append(datum)
            data = newdata
        case "dict":
            for key in data.keys():
                if key == "item":
                    return data[key]
                elif key == "tag":
                    return "#" + data[key]
                else:
                    data[key] = upgrade(data[key])
        case "str":
            pass
        case "int":
            pass
        case "float":
            pass
        case "bool":
            pass
        case _:
            print("unexpected other type: " + type(data).__name__)
    return data

for sourcePath in iglob(oldPath+"**/*.json",recursive = True):
    sourcePath = sourcePath.replace(os.sep, '/')
    data = None # how can i init a var?
    with open(sourcePath, "r") as f:
        data = json.loads(f.read())
        data = upgrade(data)
    targetPath = sourcePath.replace(oldPath, newPath)
    os.makedirs(os.path.dirname(targetPath), exist_ok = True)
    with open(targetPath, "w") as f:
        f.write(json.dumps(data, indent = 4))