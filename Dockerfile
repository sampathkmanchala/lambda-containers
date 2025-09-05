FROM public.ecr.aws/lambda/python:3.12

# Copy requirements.txt
COPY requires.txt ${LAMBDA_TASK_ROOT}

# Install the specified packages
RUN pip install -r requires.txt

# Copy function code
COPY . ${LAMBDA_TASK_ROOT}

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "module2.lambda-function2.handler" ]