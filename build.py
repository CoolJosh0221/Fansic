import os

commit_message = input()
os.system("git add .")
os.system(f'git commit -m "{commit_message}"')
os.system("git push")
os.system("DOCKER_BUILDKIT=1")
os.system("docker build --tag fansic .")
# os.system("docker image tag fansic cooljosh0221/fansic")
