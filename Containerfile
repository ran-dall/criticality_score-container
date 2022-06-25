FROM registry.redhat.io/ubi8/python-39

RUN pip3 install criticality-score

# For GitHub repos, you need to create a GitHub access token and set it in environment variable GITHUB_AUTH_TOKEN. This helps to avoid the GitHub's api rate limits with unauthenticated requests users.
ENV GITHUB_AUTH_TOKEN=" "
# For GitLab repos, you need to create a GitLab access token and set it in environment variable GITLAB_AUTH_TOKEN. This helps to avoid the GitLab's api rate limits with unauthenticated requests users.
ENV GITLAB_AUTH_TOKEN=" "

# Sets output format: the output formats allowed are default, csv, json. 
ENV OUTPUT_FORMAT="default"

# repository url
ENV REPO=" "

CMD criticality_score
ENTRYPOINT criticality_score --repo ${REPO} --format=${OUTPUT_FORMAT}