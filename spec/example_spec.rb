describe 'searching beginigs site' do
  before(:each) do
    visit('/')
  end

  # this test should pass
  # it "should allow me to search for 'green cheese'", tag('Smoke') do
  #   fill_in('q', with: "green cheese\n")
  #   expect(page).to have_content('unripened or unmatured cheese.')
  # end

  # # this test should fail
  # it "should show 'five stars' if I put five astericks into search box", tag('XFail') do
  #   fill_in('q', with: '*****')
  #   expect(page).to have_content('five stars')
  # end
  feature '`Linux portable binary` href in table item.' do
    scenario 'Visits it`s page.' do
      page.driver.click(359, 675)
      page.html.should include('<a href="/ungoogled-chromium-binaries/releases/linux_portable">Portable Linux</a>')
      sha256 = page.find(:xpath, '(//ul[2]/li/ul/li[3]/code)')
      puts "SHA256: #{sha256.text}" #=> "cda9460452a093ec506459944f2c77b50aa5b9e4fc0d1b64d1db1396344a5dc8"
    end
  end
end
