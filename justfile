alias j := jupyter

_default:
	@just --list

# run a JupyterLab server
jupyter:
	python -m jupyter lab

# run the notebook from scratch
run:
	python -m jupyter execute Machine_Learning_Project.ipynb --inplace

# convert the notebook to a PDF
pdf: run
	python -m jupyter nbconvert Machine_Learning_Project.ipynb --to pdf

# clean PDF-related build artifacts
clean:
	rm -rfv *.aux *.fls *.log *.out Machine_Learning_Project_files/ Machine_Learning_Project.tex
