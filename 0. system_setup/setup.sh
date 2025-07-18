# Update system
sudo apt update && sudo apt upgrade -y

# Download and install Miniconda
wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3

# Initialize conda
source $HOME/miniconda3/bin/activate
conda init bash
source ~/.bashrc

# Create ML environment
conda create -n ml_env -y
conda activate ml_env

# Install packages with JupyterLab
conda install -y numpy pandas matplotlib seaborn scikit-learn jupyterlab plotly ipywidgets

# Install useful extensions
pip install jupyterlab-git lckr-jupyterlab-variableinspector plotly scikit-learn

# Create project directory
mkdir -p ~/ml_projects
cd ~/ml_projects

# Downloading the wine-quality dataset
curl -L -o ./wine-quality-dataset.zip https://www.kaggle.com/api/v1/datasets/download/yasserh/wine-quality-dataset
unzip wine-quality.zip

echo "✅ Setup complete! Run 'conda activate ml_env' then 'jupyter lab' to start."