require 'rails_helper'

RSpec.describe AnimalChampion, type: :model do
  context 'validation tests' do
    it 'director_firstname can be nil or empty' do
      record = AnimalChampion.new
      record.director_firstname = nil
      expect(record).to be_valid
    end

    it 'director_firstname can be nil or empty' do
      record = AnimalChampion.create
      record.director_firstname = nil
      expect(record).to eq(true)
    end

    it 'director_surname can be nil or empty' do
      record = AnimalChampion.new
      record.director_surname = nil
      expect(record).to be_valid
    end

    it 'director_surname can be nil or empty' do
      record = AnimalChampion.create
      record.director_surname = nil
      expect(record).to eq(true)
    end

    it 'director_email can be nil or empty' do
      record = AnimalChampion.new
      record.director_email = nil
      expect(record).to be_valid
    end

    it 'director_email can be nil or empty' do
      record = AnimalChampion.create
      record.director_email = nil
      expect(record).to eq(true)
    end

    it 'director_phone can be nil or empty' do
      record = AnimalChampion.new
      record.director_phone = nil
      expect(record).to be_valid
    end

    it 'director_phone can be nil or empty' do
      record = AnimalChampion.create
      record.director_phone = nil
      expect(record).to eq(true)
    end
  end
end



# t.string :director_phone
# t.string :director_firstname
# t.string :director_surname
# t.string :director_email