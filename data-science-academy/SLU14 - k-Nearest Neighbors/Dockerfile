FROM ldssa/academy-base

# Install LU requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
    rm /tmp/requirements.txt

# Install grader
RUN pip install --upgrade ldsagrader

# Copy run scripts
COPY run.sh /student/run.sh
COPY validate.sh /student/validate.sh
COPY update.sh /student/update.sh
RUN chmod ugo+x /student/*.sh

USER student
WORKDIR /student
CMD ./run.sh
