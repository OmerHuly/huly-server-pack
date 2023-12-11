import os
import pathlib

def main():
    base_path = "./assets/custom/"
    textures_path = os.path.normpath(os.path.join(base_path, 'textures/item'))
    models_path = os.path.normpath(os.path.join(base_path, 'models/item'))
    for texture in os.listdir(textures_path):
        texture_name = pathlib.Path(texture).stem
        model_path = os.path.normpath(os.path.join(models_path, texture_name + '.json'))
        content = '''{{
    "parent": "minecraft:item/generated",
    "textures": {{
        "layer0": "custom:item/{name}"
    }}
}}
'''.format(name=texture_name)
        if not os.path.exists(model_path):
            with open(model_path, 'w') as f:
                f.write(content)

if __name__ == "__main__":
    main()
