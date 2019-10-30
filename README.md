# Trello pusher

This script is meant to be used by the ones who prefer to write their thoughts on their code editor, typora or..... and then just create simple Trello cards out of it, instead of dealing with their UI in the browser.

## Requirements

You will need trello and dotenv gems.

You can get your tokens [here](https://trello.com/app-key)

## Usage

The `Helpers` class will help you to get the ids you need to further add in your dotenv.

Normal flow will be:
```
boards = Helpers.boards('antonio')
# name: hola, id: 123abc
Helpers.lists('123abc')
# name: ToDo, id: 456efg
# .env << LIST_ID='456efg'
```

While planning, a new card has a title and optionally a description. This will be declared by the usage of `*` and `-`

```
# foo_file
* Card1
- Desc1
* Card2
* Card3
- Desc3

ruby foo_file
```
This will create 3 cards, Cards 1 & 3 with description and the 2 with just title.


## Disclaimer

This is for personal user. I push from sublime while working so I just store specific ids in the dotenv as I don't need much more magic.

If anybody finds this useful and would want it more general, feel free to reach me or open a PR.

Cheers!
