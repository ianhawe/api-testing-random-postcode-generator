require 'spec_helper'
describe Generator do

    context 'These test will test the random generator to ensure it is displaying the correct data' do
      
      random_number = rand(2..10)

      before(:all) do
        @postcode_array = Generator.new.postcodes.random_array(random_number)
        p @postcode_array.class
      end

      it 'This test will test if the number is between two numbers, 2 and 10' do
        expect(@postcode_array.length).to be_between(2,10)
      end
      it 'This test will ensure post code lengths are no longer than 10' do
        expect(@postcode_array[((random_number)-2)].length).to be < 10
      end
      it 'This test will test to see if the results will come back as an array' do
        expect(@postcode_array.class).to be(Array)
      end
      it 'This test will show return postcodes as a string' do
        @postcode_array.each do |duck|
        expect(duck).to be_kind_of(String)
        end
      end

  end
end