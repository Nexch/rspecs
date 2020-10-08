# spec/tictactoe_spec.rb
require './lib/logic'

describe GameLogic do
  subject {GameLogic.new}
  it 'win 1' do
    board = [
          %w[x x x],
          %w[- - -],
          %w[- - -]
          ]
    expect(subject.check_winner(board,'1', '1', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[x o o],
          %w[x - -],
          %w[x - -]
          ]
    expect(subject.check_winner(board,'1', '1', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[o x o],
          %w[x x x],
          %w[- - -]
          ]
    expect(subject.check_winner(board,'2', '1', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[o x x],
          %w[x o x],
          %w[- - x]
          ]
    expect(subject.check_winner(board,'2', '3', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[o x o],
          %w[x o o],
          %w[x x x]
          ]
    expect(subject.check_winner(board,'3', '3', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[o x o],
          %w[o x x],
          %w[x x o]
          ]
    expect(subject.check_winner(board,'2', '2', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[o x x],
          %w[o x x],
          %w[x o o]
          ]
    expect(subject.check_winner(board,'2', '2', 'x')).to be true
  end

  it 'win 1' do
    board = [
          %w[x x o],
          %w[o x x],
          %w[o o x]
          ]
    expect(subject.check_winner(board,'2', '2', 'x')).to be true
  end

  it 'draw' do
    board = [
          %w[x x o],
          %w[o x x],
          %w[x o x]
          ]
    expect(subject.check_draw(board, 1,1,1)).to be true
  end

  it 'not draw' do
    board = [
          %w[x x o],
          %w[o - x],
          %w[x o x]
          ]
    expect(subject.check_draw(board,1,1,1)).to be false
  end
end
