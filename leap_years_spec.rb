require 'rspec'
require_relative 'leap_years'

# All years divisible by 400 ARE leap years (so, for example, 2000 was indeed a leap year),
# All years divisible by 100 but not by 400 are NOT leap years (so, for example, 1700, 1800, and 1900 were NOT leap years, NOR will 2100 be a leap year),
# All years divisible by 4 but not by 100 ARE leap years (e.g., 2008, 2012, 2016),
# All years not divisible by 4 are NOT leap years (e.g. 2017, 2018, 2019).

RSpec.describe 'leap_years' do
  it 'says that 2000 is a leap year' do
    expect(leap_year?(2000)).to eq(true)
  end

  it 'says that 2021 is not a leap year' do
    expect(leap_year?(2021)).to eq(false)
  end

  it 'says that 1700, 1800, 1900 and 2100 are not leap years' do
    expect(leap_year?([1700, 1800, 1900, 2100])).to eq(false)
  end

  it 'says that 2008, 2012 and 2016 are leap years' do
    expect(leap_year?([2008, 2012, 2016])).to eq(true)
  end

  it 'says that 2017, 2018 and 2019 are not leap years' do
    expect(leap_year?([2017, 2018, 2019])).to eq(false)
  end

  it 'says that 2008 and 2020 are leap years but 2018 and 2019 are not leap years' do
    expect(leap_year?([2008, 2018, 2019, 2020])).to eq({ 2008 => true, 2018 => false, 2019 => false, 2020 => true })
  end
end
