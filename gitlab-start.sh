#!/bin/bash
docker run --name gitlab-postgresql -d \
    --env 'DB_NAME=gitlabhq_production' \
    --env 'DB_USER=gitlab' --env 'DB_PASS=password' \
    --env 'DB_EXTENSION=pg_trgm' \
    --volume /root/storage/gitlab/postgresql:/var/lib/postgresql \
    sameersbn/postgresql:9.6-2
docker run --name gitlab-redis -d \
    --volume /root/storage/gitlab/redis:/var/lib/redis \
    sameersbn/redis:latest
docker run --name gitlab -d \
    --link gitlab-postgresql:postgresql --link gitlab-redis:redisio \
    --publish 10022:22 --publish 10080:80 \
    --env 'GITLAB_PORT=10080' --env 'GITLAB_SSH_PORT=10022' \
    --env 'GITLAB_SECRETS_DB_KEY_BASE=lailake' \
    --env 'GITLAB_SECRETS_SECRET_KEY_BASE=lailake' \
    --env 'GITLAB_SECRETS_OTP_KEY_BASE=lailake' \
    --env 'GITLAB_HOST=gitlab.bjike.com' \
    --volume /root/storage/gitlab/gitlab-data:/home/git/data \
    sameersbn/gitlab:9.0.2
