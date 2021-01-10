FROM conda/miniconda3
RUN conda update -n base -c defaults conda

RUN conda create -n cling -y
SHELL ["conda", "run" , "-n", "cling" , "/bin/bash", "-c"]

RUN conda install -n cling -y xeus-cling -c conda-forge
RUN conda install -n cling -y notebook -c conda-forge

RUN mkdir /notebooks

# CMD conda run --no-capture-output -n cling /bin/bash -c "jupyter notebook --allow-root --ip 0.0.0.0"

