describe 'Game' do
  specify do
    visit '/'

    expect( page ).to have_content 'Memory Game'
  end
end
