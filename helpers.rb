require_relative './config'
class Helpers
  class << self
    # Given your name, returns all your board with its ids
    def boards(username)
      boards = Trello::Member.find(username).boards
      boards.map { |board| puts "name: #{board.name}, id: #{board.id}" }
    end

    # Given board_id, returns all the lists with its ids
    def lists(board_id)
      lists = Trello::Board.find(board_id).lists
      lists.map { |list| puts "name: #{list.name}, id: #{list.id}" }
    end

    # Given the name and desc it will create a card on the desired list
    def create_card(name, desc, list_id = ENV['LIST_ID'])
      Trello::Card.create({name: name, desc: desc, list_id: list_id})
    end
  end
end
