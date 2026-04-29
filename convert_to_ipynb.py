import os
import re
import glob
import nbformat
from nbformat.v4 import new_notebook, new_markdown_cell, new_code_cell

def convert_qmd_to_ipynb(md_file_path, ipynb_file_path):
    with open(md_file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    nb = new_notebook()
    
    # Set R kernel metadata
    nb.metadata = {
        "kernelspec": {
            "display_name": "R",
            "language": "R",
            "name": "ir"
        },
        "language_info": {
            "codemirror_mode": "r",
            "file_extension": ".r",
            "mimetype": "text/x-r-source",
            "name": "R",
            "pygments_lexer": "r",
            "version": "4.0.0"
        }
    }

    lines = content.split('\n')
    
    current_md = []
    current_code = []
    in_code = False
    
    for line in lines:
        if line.startswith('```{r') or line.startswith('```{R'):
            if current_md:
                md_text = '\n'.join(current_md).strip()
                if md_text:
                    nb.cells.append(new_markdown_cell(md_text))
                current_md = []
            in_code = True
        elif line.startswith('```') and in_code:
            code_text = '\n'.join(current_code).strip()
            if code_text:
                nb.cells.append(new_code_cell(code_text))
            current_code = []
            in_code = False
        else:
            if in_code:
                current_code.append(line)
            else:
                current_md.append(line)
                
    if current_md:
        md_text = '\n'.join(current_md).strip()
        if md_text:
            nb.cells.append(new_markdown_cell(md_text))

    with open(ipynb_file_path, 'w', encoding='utf-8') as f:
        nbformat.write(nb, f)

if __name__ == "__main__":
    files = glob.glob('materials/*.qmd')
    for file in files:
        base = os.path.basename(file)
        name, ext = os.path.splitext(base)
        output = os.path.join('colab', name + '.ipynb')
        print(f"Converting {file} to {output}")
        convert_qmd_to_ipynb(file, output)
