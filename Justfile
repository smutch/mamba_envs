jupyterlab: && (_replace_grpcio "jupyterlab")
  mamba env remove -n jupyterlab || true
  mamba env create -f jupyterlab.yml

kitchen_sink: && (_kernelspec "kitchen_sink")
  mamba env remove -n kitchen_sink || true
  mamba env create -f kitchen_sink.yml

[macos]
_replace_grpcio env:
  mamba run -n {{env}} pip uninstall -y grpcio && \
    mamba install -yn {{env}} grpcio

[linux,unix,windows]
_replace_grpcio env:

_kernelspec env:
  mamba run -n {{env}} python -m ipykernel install --user --name {{env}}
