alias j := jupyter

_default:
	@just --list

# run JupyterLab
jupyter:
	python -m jupyter lab

# convert the notebook to a PDF
pdf:
	python -m jupyter nbconvert Machine_Learning_Project.ipynb --to pdf

# clean PDF-related build artifacts
clean:
	rm -rfv *.aux *.fls *.log *.out Machine_Learning_Project_files/ Machine_Learning_Project.tex
