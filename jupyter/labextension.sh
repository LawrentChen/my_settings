#!/usr/bin/env zsh

conda install -c conda-forge rise

# TODO: check the extensions already installed by
# jupyter labextension list and remove them from 
# the list below

# require node.js and npm installed
# extensions mainly picked up from github repo: awesome-jupyterlab
# @krassowski/jupyterlab-lsp has problems during build
extensions=(@jupyterlab/toc
            @jupyterlab/latex
            @jupyterlab/mathjax3-extension
            jupyterlab-drawio
            jupyterlab-plotly
            jupyterlab-spreadsheet
            @lckr/jupyterlab_variableinspector)

# --no-build flag to avoid repeat building the whole lab
# after each extension installed
for extension in $extensions
do
    jupyter labextension install $extension --no-build
done

# code_formatter can not use --no-build 
# read the official doc to find how to change the default formater
# such as black, pep8
jupyter labextension install @ryantam626/jupyterlab_code_formatter

# uncomment the line below to explicitly build
# jupyter lab build