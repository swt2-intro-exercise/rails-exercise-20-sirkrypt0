FactoryBot.define do
  factory :paper do
    title { "My Paper" }
    venue { "HPI" }
    year { 2019 }
    authors { build_list :author, 1}
  end
end
