FROM jupyter/minimal-notebook

COPY data/ data/
COPY InteractiveClusters.ipynb ./
COPY requirements.txt ./
RUN pip install -r requirements.txt
RUN jupyter nbextension enable --py widgetsnbextension
