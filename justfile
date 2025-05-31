alias j := jupyter

_default:
    @just --list

# run a JupyterLab server
[group("python")]
jupyter:
    python -m jupyter lab

# run the notebook from scratch
[group("python")]
run:
    python -m jupyter execute Machine_Learning_Project.ipynb --inplace

# convert the notebook to a PDF
[group("pdf")]
pdf: run
    python -m jupyter nbconvert Machine_Learning_Project.ipynb --to pdf

# clean PDF-related build artifacts
[group("pdf")]
clean:
    rm -rfv *.aux *.fls *.log *.out Machine_Learning_Project_files/ Machine_Learning_Project.tex
