# python -m venv ./venv
# git submodule update --init --recursive
# pip install scikit-build
# LLAMA_METAL=1 pip install -e .\[server\]
# LLAMA_METAL=1 python setup.py develop

source ./venv/bin/activate
python -m llama_cpp.server --model ../models/wizardlm-7b-v1.0-uncensored.ggmlv3.q5_K_M.bin --model_alias gpt-3.5-turbo --port 8300 --host 0.0.0.0 --use_mlock 1 --use_mmap 1 --cache 1 --n_threads 4 