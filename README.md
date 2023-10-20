# Pet Rescue Adoption Application
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-7-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

The Pet Rescue app is derived from the [Baja Pet Rescue Dog Adoption Application](https://github.com/kasugaijin/baja-pet-rescue/tree/main) created by @kasugaijin who wanted to give back to the grassroots organization from where he adopted his dog in Mexico by building them a web application. Pet Rescue is an application that makes it easy to link adopters with pets.

---

# 🚀 Getting Started

Let's get your machine setup to startup the application!

## Prerequisites

⚠️  We assume you already have ruby installed with your preferred version manager. This codebase supports [rbenv](
https://github.com/rbenv/rbenv) and [asdf](https://github.com/asdf-vm/asdf-ruby).

## Install & Setup

Clone the codebase 
```
git clone git@github.com:rubyforgood/pet-rescue.git
```

Create a new `config/application.yml` file from the `config/application.example.yml`:
```
cp config/application.example.yml config/application.yml
```

Update your `config/application.yml` by replacing the places that say REPLACE_ME.

Run the setup script to prepare DB and assets
```sh
bin/setup
```

To run the app locally, use:
```
bin/dev
```

You should see the seed organization by going to:
```
http://localhost:3000/alta/
```

## Login Credentials

All users are scoped to an organization. Hence, you must login via the correct
login portal per organization. 

You can use the following login credentials to login to http://localhost:3000/alta:

Use the following login 
Adopter 
- email: `adopter1@alta.com` 
- password: `123456`

Staff
- email: `staff@alta.com`
- password: `123456`


# 🧪 Running Tests

Run unit tests only
```
./bin/rails test
```

Run system tests only (Headless)
```
./bin/rails test:system
```

Run system tests only (Not-Headless)
```
CI=false ./bin/rails test:system
```

**Note:** If system tests are failing for you, try prepending the command with `APP_HOST=localhost`. Your host might be misconfigured.
```
APP_HOST=localhost ./bin/rails test:system
```

Run ALL tests:
```
./bin/rails test:all
```

# 💅 Linting 

We use [standard](https://github.com/standardrb/standard) for linting. It provides a command for auto-fixing errors:

```sh
rails standard:fix
```

# 🔨 Tools

This [google sheets](https://docs.google.com/spreadsheets/d/1kPDeLicDu1IFkjWEXrWpwT36jtvoMVopEBiX-5L-r1A/edit?usp=sharing) contains a list of tools, their purposes, and who has access to grant permissions.

# 📖 About

## Ruby for Good
Pet Rescue is one of many projects initiated and run by Ruby for Good. You can find out more about Ruby for Good at https://rubyforgood.org

## Pet Rescue Adoption Sites
[Baja Pet Rescue](https://www.bajapetrescue.com)

# 🌟 Core Values
While vision is the destination, and strategy is how we'll get there, core values are what we'll use to handle times of change or uncertainty (both of which are expected, guaranteed to happen, and positive signs of growth!).

We are committed to promoting positive culture and outcomes for all, from coders and maintainers and leads
to pet rescue and adoption administrators -- and animals everywhere.

We will lean on the following as guiding principles when interacting with others -- stakeholders, as well as current and future maintainers, leads, and collaborators -- and we ask that anyone engaging with this project in any capacity to do the same. Know that we do want to know how and when (not if) we can improve upon these values and/or the way in which we live by and act in accordance with them, so please comment here and in PRs when you have ideas.

Here are our core values defined by early contributors and leads:

### Code Quality and Collaboration
Write maintainable code that is accessible and enjoyable (for beginners and seasoned coders alike), supports and encourages contributors and their contributions, and ensures long-term sustainability of this project and the efforts it supports.

### Communication and Perspective:
Prioritize clear communication, embrace diverse viewpoints, and always engage feedback -- all with a commitment to timely responses and ongoing improvement for all. Rescue and adoption partner perspectives will be prioritized over abstracted conceptualization of their needs.

### Engagement and Practicality:
Build upon stakeholder partnerships to foster and encourage their active involvement, focusing constructive discussion and dispute resolution on the practical impact of our collective work.


---

# 📚Knowledge Base

## Preparation Work (Before code)
These are just some of the documents put together before writing any code:
* Slide deck to pitch idea to client: [here](https://docs.google.com/presentation/d/1d4gjzADk7BcxmQEVZlesheGUen9d1E3RzrVvskMhVxo/edit?usp=sharing)
* Figma site design: [here](https://www.figma.com/file/x3iM31l8csY7mT0VwKykhT/BPR---Wireframes---Ami?node-id=530186%3A154&t=mgRlseVd2LTKPX4o-1)
* Model association diagram: [here](https://lucid.app/lucidchart/a915c03c-3c09-454d-837b-f3d2768f5722/edit?viewport_loc=-25%2C-973%2C3565%2C2341%2C0_0&invitationId=inv_85cf2967-7b33-4030-903f-9655e767cbbf)


## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/kasugaijin"><img src="https://avatars.githubusercontent.com/u/95949082?v=4?s=100" width="100px;" alt="Ben"/><br /><sub><b>Ben</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=kasugaijin" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/marlena-b"><img src="https://avatars.githubusercontent.com/u/96994176?v=4?s=100" width="100px;" alt="Marlena Borowiec"/><br /><sub><b>Marlena Borowiec</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=marlena-b" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Ptrboro"><img src="https://avatars.githubusercontent.com/u/16762860?v=4?s=100" width="100px;" alt="Piotr Borowiec"/><br /><sub><b>Piotr Borowiec</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=Ptrboro" title="Code">💻</a> <a href="https://github.com/rubyforgood/pet-rescue/pulls?q=is%3Apr+reviewed-by%3APtrboro" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/yuricarvalhop"><img src="https://avatars.githubusercontent.com/u/20230045?v=4?s=100" width="100px;" alt="Yuri Pains"/><br /><sub><b>Yuri Pains</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=yuricarvalhop" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://reyes-dev.github.io/portfolio-site/"><img src="https://avatars.githubusercontent.com/u/102765102?v=4?s=100" width="100px;" alt="Jarrod Reyes"/><br /><sub><b>Jarrod Reyes</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=reyes-dev" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://erinclaudio.com"><img src="https://avatars.githubusercontent.com/u/20326770?v=4?s=100" width="100px;" alt="Erin Claudio"/><br /><sub><b>Erin Claudio</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=ErinClaudio" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/jadekstewart3"><img src="https://avatars.githubusercontent.com/u/114014697?v=4?s=100" width="100px;" alt="Jade Stewart"/><br /><sub><b>Jade Stewart</b></sub></a><br /><a href="https://github.com/rubyforgood/pet-rescue/commits?author=jadekstewart3" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

