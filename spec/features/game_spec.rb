describe 'Game' do
  specify 'User can pick two cards' do
    visit '/'

    save_and_open_page

    click_link 'card-1'
    click_link 'card-2'

    expect( page ).to have_content 'You have clicked 2 cards'
  end
end
