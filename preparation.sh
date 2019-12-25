# Save start path
cwd=$(pwd)
# Installation of Python 3.7 or later
sudo apt-get update
sudo apt-get install python3
sudo apt-get install python3-dev
# Set up Environment and activate it
cd ~
python3 -m venv my_django
source ~/my_django/bin/activate
# Install required libraries
python3 -m pip install --upgrade pip setuptools wheel
cd $cwd
python3 -m pip install -r ./requirements.txt
django-admin startproject myblog
cd myblog
python manage.py startapp blog

python manage.py runserver
