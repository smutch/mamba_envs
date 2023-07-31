jupyterlab:
  mamba env remove -n jupyterlab || true
  mamba env create -f jupyterlab.yml

kitchen_sink: && (_kernelspec "kitchen_sink")
  mamba env remove -n kitchen_sink || true
  mamba env create -f kitchen_sink.yml

_kernelspec env:
  mamba run -n {{env}} python -m ipykernel install --user --name {{env}}
