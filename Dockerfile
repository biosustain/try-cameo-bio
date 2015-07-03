FROM jupyter/demo:latest
USER root
RUN apt-get -y update && apt-get install -y swig libzmq3-dev libgmp-dev libglpk-dev glpk-utils pandoc python-dev python-pip libxml2 libxml2-dev zlib1g zlib1g-dev bzip2 libbz2-dev
RUN pip install pip --upgrade
# RUN pip install paver
# RUN git clone https://github.com/aarongarrett/inspyred.git && cd inspyred && paver sdist && python setup.py install
RUN pip install inspyred -f http://nikosonnensche.in/wheels/index.html --no-index --trusted-host nikosonnensche.in
RUN pip install python-libsbml-experimental -f http://nikosonnensche.in/wheels/index.html --no-index --trusted-host nikosonnensche.in
RUN pip install escher
RUN pip install -e git+https://github.com/coagulant/progressbar-python3.git#egg=progressbar
RUN pip install cameo
CMD ipython notebook
