# Trello pusher

This script is meant to be used by the ones who prefer to write their thoughts on their text editor, typora or... and then just create simple Trello cards out of it, instead of dealing with their UI.

## Requirements

You will need `trello` and `dotenv` gems and whatever not ancient version of ruby.
```
gem install trello
gem install dotenv
```

You can get your Trello tokens [here](https://trello.com/app-key)

## Setup

The `Helpers` class will help you to get the ids that you will need. Basically you have to decide to which list you want to write and add that one to the dotenv.

From an `irb` session within the `trello_pusher` directory:

```
require_relative './helpers'
boards = Helpers.boards('antonio')
# name: hola, id: 123abc
Helpers.lists('123abc')
# name: ToDo, id: 456efg
# .env << LIST_ID='456efg'
```
Your dotenv should be something like:
```
$ cat .env
API_KEY='foo'
MEMBER_TOKEN='bar'
LIST_ID='xyz'
```

## Usage

While planning your project, every new card is composed by a title and an optional description. This will be declared by the usage of `*` for titles and `-` for descriptions.

```
# foo_file
* Card1
- Desc1
* Card2
* Card3
- Desc3

ruby pusher.rb foo_file
```
Running the script will create 3 cards: Cards 1 & 3 with description and the Card 2 with just title.

![](./assets/board.png)


Optionally you could add an alias to your bash_profile to call the script from wherever.
```
export PUSHER_PATH='~/path_to_trello_pusher'
alias pusher="ruby $PUSHER_PATH/pusher.rb "
```

## Disclaimer

This is for personal use. I push from sublime while working so I just store specific ids in the dotenv as I don't need much more magic.

If anybody finds this useful and would want it more general, feel free to reach out or open a PR.

Cheers!
