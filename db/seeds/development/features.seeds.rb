after "development:entities" do
  Feature.seed(:name, :entity_id,
    { name: "имя",          entity_id: Entity.find_by(name: 'кот').id },
    { name: "домашнее имя", entity_id: Entity.find_by(name: 'кот').id },
    { name: "окрас",        entity_id: Entity.find_by(name: 'кот').id },
    { name: "цвет глаз",    entity_id: Entity.find_by(name: 'кот').id },

    { name: "имя",          entity_id: Entity.find_by(name: 'собака').id },
    { name: "домашнее имя", entity_id: Entity.find_by(name: 'собака').id },
    { name: "окрас",        entity_id: Entity.find_by(name: 'собака').id },
    { name: "цвет глаз",    entity_id: Entity.find_by(name: 'собака').id }
  )
end
