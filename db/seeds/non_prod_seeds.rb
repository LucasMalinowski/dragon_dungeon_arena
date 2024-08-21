dm = User.create!(
  email: 'dungeon@test.com',
  username: 'Dungeon Master',
  password: 'test1234',
  password_confirmation: 'test1234'
)

player1 = User.create!(
  email: 'test@dungeon.com',
  username: 'Test Player',
  password: 'test1234',
  password_confirmation: 'test1234'
)

sheet1 = Sheet.create!(
  user: dm,
  name: 'Kyle',
  hp: 10,
  strength: 10)

sheet2 = Sheet.create!(
  user: player1,
  name: 'John',
  hp: 10,
  strength: 10)

Character.create!(
  sheet: sheet1)

Character.create!(
  sheet: sheet2)

