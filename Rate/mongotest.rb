require 'mongo'


client = Mongo::Client.new('mongodb://172.31.36.209:27017/test')

collection = client[:people]

doc = { name: 'Steve', hobbies: [ 'hiking', 'tennis', 'fly fishing' ] }

result = collection.insert_one(doc)
result.n # returns 1, because one document was inserted
