conda init zsh
source ~/.zshrc
conda activate donkey
pip install -e .
donkey createcar --path ~/mycar
