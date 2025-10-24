#This is a sample Dockerfile

#base Image
FROM python:3.9
#workdir
WORKDIR /app
#copy
COPY . /app

#run
pip install -r requirements.txt

#expose
expose 5000

#command
CMD ['python',"./app.py"]

#After saving this file, inside the location of your files, run this: docker build -t <dockerprofileusername>/<nameofyourimage> .  
