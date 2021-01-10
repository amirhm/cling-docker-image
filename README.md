# cling-docker-image

`xeus-cling` is a Jupyter kernel for C++ based on the C++ interpreter cling and the native implementation of the Jupyter protocol xeus. 
(repository address: https://github.com/jupyter-xeus/xeus-cling)

here are two seperate docker image to easily install the jupyter kernels for xeus-cling. With and without the xtensor support. Both Images are pushed to dockerhub.

```
docker pull hamirhm/cling:latest
docker pull hamirhm/xtensor
```

Repository for xtensor package build with xeus-cling jupyter notebooks. To find out more about the xtensor visit the github repository for the xtensor-stack:

https://github.com/xtensor-stack/xtensor

And for information regarding the xeus-cling Jupyter kernels visit here: https://github.com/jupyter-xeus/xeus-cling

one example for running the image could be like this:

`docker run --rm -it -p 8888:8888 -v /folder_on_host:/notebooks hamirhm/xtensor`

```
    p 8888: if the jupyter is going to be run on default ports
    v: for bind mounting the local folder
```
if needed that server to be accessible from network (and not just local machine) add the --net="host" as well set the correct ip while running the jupyter notebook.

to run the server locally: 

```
conda run --no-capture-output -n cling /bin/bash -c "jupyter notebook --allow-root --ip 0.0.0.0"
```

--no-capture-output :  is to see the token to connect the server. one can set the password as jupyter kernel config and remove that step.