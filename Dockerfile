FROM pytorch/pytorch:2.7.1-cuda11.8-cudnn9-runtime

WORKDIR /workspace

RUN pip install --upgrade pip && \
    pip install jupyterlab scikit-learn pandas matplotlib mlxtend tqdm

EXPOSE 8888

CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
