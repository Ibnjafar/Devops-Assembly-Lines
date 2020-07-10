# Devops-Assembly-Lines
This repository contains code for task and project that undergone during Devops-Assembly-Lines Internship.

# TASK 1 : Lets Deploy our web-server from Git2Docker
>JOB 1

Whenever the developer push the code to Github in dev1 branch , our system(Jenkins) should automatically pull the code and deploy the code in Test Docker Environment(testenv). 

 Git(Dev1 Branch) → Docker(testenv)
 
>JOB 2

If Developer push to master branch , then Jenkins will fetch from master branch and deploy it on Production Docker Environment(prodenv).

Git(master Branch) → Docker(prodenv)

* [Note:]

Both test-docker and master-docker environment are on different docker containers.

>JOB 3

Manually the QA team will check (test) for the website running in testenv. If it is running fine then Jenkins will merge the dev1 branch to master branch and trigger job 2 (i.e., launch Production Docker Environment prodenv )

For step by step explanation https://medium.com/@devml2016/lets-deploy-our-web-server-from-git2docker-bc42e624e505?sk=43b134f4e001c2a29642ba65d04d48b4

# Task 2 : Let’s Start Automation using Jenkins, Docker, GitHub
For step by step explanation https://medium.com/@devml2016/lets-start-automation-using-jenkins-docker-github-d5f8d019ec4a
