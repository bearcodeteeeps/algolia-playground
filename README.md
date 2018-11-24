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
rails db:migrate
```

Use devise to sign in at localhost:3000

Now - note your subdomain. You should migrate again because I am using sqlite3 and I get an error if I don't migrate.

Once you create your account go to

`<subdomain>.lvh.me:3000`

Start to create `Posts` - only the published ones will go to algolia.

Expect to see an index `#{sub_domain}_Post_development`.

You should be able to create new indices for every subdomain.




