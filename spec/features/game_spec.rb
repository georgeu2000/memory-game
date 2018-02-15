describe 'Game' ,:js do

  before do
    allow_any_instance_of( Array )
      .to receive( :shuffle ){ | ary | ary }
  end

  describe 'User can pick a match' do
    let( :alert_text ){ page.driver.browser.switch_to.alert.text }

    before do
      visit '/'

      find( '#card-1' ).click
      find( '#card-14' ).click
      
      sleep 0.2
    end
    
    specify 'Shows Alert' do
      expect( alert_text ).to eq 'Match!'
    end

    specify 'Removes cards' do
      page.driver.browser.switch_to.alert.accept

      sleep 1

      expect( all( '#board .card:not(.removed)' ).count ).to eq 50
    end

    specify 'Shows card matches' do
      page.driver.browser.switch_to.alert.accept

      sleep 1

      expect( all( '#matches .card' ).count ).to eq 2
    end

    specify 'Shows card matche count' do
      page.driver.browser.switch_to.alert.accept

      sleep 1

      expect( page ).to have_content '2 Matches'
    end
  end
end
