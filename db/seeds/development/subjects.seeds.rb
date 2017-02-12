after "development:entities", "development:users" do
  Subject.seed do |s|
    s.entity  = Entity.find_by(name: 'кот')
    s.creator = User.find_by(email: 'admin@example.com')
  end

  Subject.seed do |s|
    s.entity  = Entity.find_by(name: 'собака')
    s.creator = User.find_by(email: 'admin@example.com')
  end
end
