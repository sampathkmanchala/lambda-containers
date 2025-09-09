FROM public.ecr.aws/lambda/python:3.12
WORKDIR /usr/src/app

# Copy requirements.txt
COPY requires.txt .

# Install the specified packages
RUN pip install -r requires.txt --target=/usr/src/app

# Copy function code
COPY . .

ENV PYTHONPATH "/usr/src/app"

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "module2.lambda-function2.handler" ]
