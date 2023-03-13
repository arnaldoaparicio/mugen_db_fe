# README

This is the untitled MUGEN DB frontend. Created with Ruby on Rails.
You can check it out here: https://mugen-db-aa.fly.dev/

Click [here](https://github.com/arnaldoaparicio/mugen_db) to see the backend portion of this project.

## What is MUGEN?
MUGEN is a 2d fighting game engine created by a company named Elecbyte. The purpose is for the user to create their own 2d fighting game. It is highly customizable, thus allowing the user to make changes to anything they desire. The sky is the limit.

## Why does this exist?
The purpose of this is to provide a large collection of links for the user to easily access assets for use with MUGEN. This includes characters, stages, screenpacks, lifebars, and other miscellaneous resources. Many of the databases that exist, past or present, are either defunct or severely out of date. The goal is to provide an up-to-date repository for everything involving MUGEN.

## Technical Goals
- Pass mulipart/form-data (JSON data + Image) from the Rails frontend to the Rails API backened to allow creation of new posts as well as uploading to an Amazon S3 bucket
- Display images from Amazon S3 bucket upon creation of a new post.
- Utilize a CI/CD workflow

For more in-depth information regarding challenges and goals, check out this log I created: https://gist.github.com/arnaldoaparicio/c91ffdefd2573c21ba2c3c921760f8e1