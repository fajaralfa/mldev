FROM pytorch/pytorch:2.9.0-cuda12.6-cudnn9-runtime

WORKDIR /workspace

RUN pip install --upgrade pip && \
    pip install jupyterlab scikit-learn pandas matplotlib mlxtend tqdm fastai

EXPOSE 8888

CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
