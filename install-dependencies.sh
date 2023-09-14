echo "# install apt dependencies"
apt update
apt install python3-full -y

echo "# install python dependencies in virtual environment"
if [ ! -d ".venv" ]
then
    # Create a virtual environment
    python -m venv .venv

    # Activate the virtual environment
    source .venv/bin/activate

    # Install dependencies from requirements.txt
    if [ -f "requirements.txt" ]
    then
        pip install -r requirements.txt
    else
        echo "# requirements.txt not found in the current directory"
    fi
else
    echo "# .venv directory already exists, delete and rerun script to recreate"
fi
