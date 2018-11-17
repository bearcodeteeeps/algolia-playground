[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

# README

This sample application is for using the `algolia-rails` gem.

![](algolia_playground.gif)

## Local rails

To get started clone this repo:

Duplicate `.env.example` to `.env` and add your algolia credentials.

Setup the database - this will run seeds and put index data to Algolia.

You can specify the number of users you want:

```bash
rails db:setup USERS=2
```

User emails are in odd numbers from 0 - `sample0@user.com, sample2@user.com` and the password is `sampleuser`

Now the app is ready to boot!

```
rails s
```

## Optional Docker

You can use the DockerFile with postgres if you setup a `database.yml` from `database.docker.yml`

```
docker-compose up
docker exec algoliaplayground_web_1 rails db:setup USERS=2
```