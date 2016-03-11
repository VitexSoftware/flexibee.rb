describe Flexibee::Node, vcr: true do
  before do
    VCR.use_cassette 'tree/api_response' do
      @node ||= @flexibee.tree.nodes.first
      @node_last ||= @flexibee.tree.nodes.last
    end
  end

  describe '#initialize' do
    it 'gets basic node response' do
      expect(@node).to be_an(Flexibee::Node)
      expect(@node_last).to be_an(Flexibee::Node)
    end
  end

  describe '#id' do
    it 'gets node id' do
      expect(@node.id).to eql(1)
      expect(@node_last.id).to eql(41)
    end
  end

  describe '#updated_at' do
    it 'gets node updated_at' do
      expect(@node.updated_at).to eql('2015-05-28T09:40:11.971+02:00')
      expect(@node_last.updated_at).to eql('2015-09-14T11:12:13.141+02:00')
    end
  end

  describe '#code' do
    it 'gets node code' do
      expect(@node.code).to eql('STR_CEN')
      expect(@node_last.code).to eql('Kožené')
    end
  end

  describe '#name' do
    it 'gets node name' do
      expect(@node.name).to eql('Strom ceníku')
      expect(@node_last.name).to eql('Kožené')
    end
  end

  describe '#level' do
    it 'gets node level' do
      expect(@node.level).to eql(1)
      expect(@node_last.level).to eql(5)
    end
  end

  describe '#order' do
    it 'gets node order' do
      expect(@node.order).to eql(1)
      expect(@node_last.order).to eql(3)
    end
  end

  describe '#route' do
    it 'gets node route' do
      expect(@node.route).to eql('1/')
      expect(@node_last.route).to eql('1/1/3/7/3/')
    end
  end

  describe '#short_description' do
    it 'gets node short_description' do
      expect(@node.short_description).to be_empty
      expect(@node_last.short_description).to be_empty
    end
  end

  describe '#keywords' do
    it 'gets node keywords' do
      expect(@node.keywords).to be_empty
      expect(@node_last.keywords).to be_empty
    end
  end

  describe '#description' do
    it 'gets node description' do
      expect(@node.description).to be_empty
      expect(@node_last.description).to be_empty
    end
  end

  describe '#tree_ref' do
    it 'gets node tree_ref' do
      expect(@node.tree_ref).to eql('/c/woodies/strom-koren/1.json')
      expect(@node_last.tree_ref).to eql('/c/woodies/strom-koren/1.json')
    end
  end

  describe '#parent_id' do
    it 'gets node parent_id' do
      expect(@node.parent_id).to eql(0)
      expect(@node_last.parent_id).to eql(11)
    end
  end

  describe '#parent_ref' do
    it 'gets node parent_ref' do
      expect(@node.parent_ref).to be_nil
      expect(@node_last.parent_ref).to eql('/c/woodies/strom/11.json')
    end
  end
end