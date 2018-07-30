
#!/bin/sh

jupyter notebook --generate-config
cp jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
jupyter notebook --ip=0.0.0.0 --port=8888 --notebook-dir=/opt --allow-root &
