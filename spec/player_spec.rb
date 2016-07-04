require 'player'

describe Player do

	let(:p){Player.new('calvin')}

	describe '#initialize' do 
		it 'gets the name of the player' do
			expect(p.name).to eq('calvin')
		end
	end

	describe '#coordinates' do 
		it 'properly recieves coords' do 
			allow(p.coordinates).to receive(:get_coord).and_return([1, 1])
			expect(p.coordinates.coord).to eq([1, 1])
			p.coordinates
		end
	end




end

