# # base image python
# FROM python:3

# # set env
# ENV PYTHONUNBUFFERED=1

# # set working directoy
# WORKDIR /code

# # copy requrements.txt file to the container from local machine
# COPY requirements.txt /code/

# # install requirements.txt
# RUN pip install -r requirements.txt

# # copy entire code/folder structure into container
# COPY . /code/



# # base image alpine
# FROM python:3-alpine

# # set env
# ENV PYTHONUNBUFFERED=1

# # set working directory
# WORKDIR /code

# # copy requirements.txt file to the container from local machine
# COPY requirements.txt /code/

# # install requirements.txt
# RUN apk add --no-cache gcc musl-dev && \
#     pip install --no-cache-dir -r requirements.txt && \
#     apk del gcc musl-dev

# # copy entire code/folder structure into container
# COPY . /code/


# base image alpine
FROM python:3-alpine

# set env
ENV PYTHONUNBUFFERED=1

# set working directory
WORKDIR /code

# install build dependencies
RUN apk add --no-cache build-base musl-dev postgresql-dev

# copy requirements.txt file to the container from local machine
COPY requirements.txt /code/

# install requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# copy entire code/folder structure into container
COPY . /code/

