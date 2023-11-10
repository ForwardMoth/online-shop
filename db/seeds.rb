# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

user = User.create(
    first_name: 'Иван', 
    last_name: 'Иванов', 
    second_name: 'Алексеевич', 
    date_of_birth: '1999-07-15'
)

p "Created users #{User.count}"

Order.destroy_all

Order.create(user_id: user.id)

p "Created orders #{Order.count}"

Product.destroy_all

Product.create([
    {
        name: 'Лаптоп',
        category: 'Электроника',
        price: 60000
    },
    {
        name: 'Книга',
        category: 'Литература',
        price: 700
    },
    {
        name: 'Футбольный мяч',
        category: 'Спорт и отдых',
        price: 500
    },
    {
        name: 'Шоколад',
        category: 'Продукты питания',
        price: 100
    },
    {
        name: 'Наушники',
        category: 'Электроника',
        price: 5000
    },
    {
        name: 'Ручка',
        category: 'Канцтовары',
        price: 80
    },
    {
        name: 'Кофе',
        category: 'Продукты питания',
        price: 350
    },
    {
        name: 'Велосипед',
        category: 'Спорт и отдых',
        price: 10000
    }
])

p "Created products #{Product.count}"
