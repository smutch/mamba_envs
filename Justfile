jupyterlab:
  mamba env remove -n jupyterlab || true
  mamba env create -f jupyterlab.yml
  mamba run -n jupyterlab pip uninstall -y grpcio && \
    mamba install -yn jupyterlab grpcio

kitchen_sink:
  mamba env remove -n kitchen_sink || true
  mamba env create -f kitchen_sink.yml
