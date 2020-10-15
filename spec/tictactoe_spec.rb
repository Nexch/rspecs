# spec/tictactoe_spec.rb
require './lib/logic'

describe GameLogic do
  subject { GameLogic.new }
  describe 'win row' do
    it 'win 1 row' do
      board = [
        %w[x x x],
        %w[- - -],
        %w[- - -]
      ]
      expect(subject.check_winner(board, '1', '1', 'x')).to be true
    end

    it 'win 2 row' do
      board = [
        %w[o x o],
        %w[x x x],
        %w[- - -]
      ]
      expect(subject.check_winner(board, '2', '1', 'x')).to be true
    end

    it 'win 3 row' do
      board = [
        %w[o x o],
        %w[x o o],
        %w[x x x]
      ]
      expect(subject.check_winner(board, '3', '3', 'x')).to be true
    end
  end

  describe 'win colum' do
    it 'win 1 colum' do
      board = [
        %w[x o o],
        %w[x - -],
        %w[x - -]
      ]
      expect(subject.check_winner(board, '1', '1', 'x')).to be true
    end

    it 'win 3 colum' do
      board = [
        %w[o x x],
        %w[x o x],
        %w[- - x]
      ]
      expect(subject.check_winner(board, '2', '3', 'x')).to be true
    end

    it 'win 2 colum' do
      board = [
        %w[o x o],
        %w[o x x],
        %w[x x o]
      ]
      expect(subject.check_winner(board, '2', '2', 'x')).to be true
    end
  end

  describe 'draw' do
    it 'draw 1' do
      board = [
        %w[o x x],
        %w[o x x],
        %w[x o o]
      ]
      expect(subject.check_winner(board, '2', '2', 'x')).to be true
    end

    it 'draw 2' do
      board = [
        %w[x x o],
        %w[o x x],
        %w[o o x]
      ]
      expect(subject.check_winner(board, '2', '2', 'x')).to be true
    end

    it 'draw 3' do
      board = [
        %w[x x o],
        %w[o x x],
        %w[x o x]
      ]
      expect(subject.check_draw(board, 1, 1, 1)).to be true
    end

    it 'not draw' do
      board = [
        %w[x x o],
        %w[o - x],
        %w[x o x]
      ]
      expect(subject.check_draw(board, 1, 1, 1)).to be false
    end

    it 'not win 2' do
      board = [
        %w[x x o],
        %w[o - x],
        %w[x o x]
      ]
      expect(subject.check_draw(board, 1, 1, 1)).to be false
    end

    it 'not win 1' do
      board = [
        %w[x x o],
        %w[o - x],
        %w[x o x]
      ]
      expect(subject.check_draw(board, 1, 1, 1)).to be false
    end
  end
end
