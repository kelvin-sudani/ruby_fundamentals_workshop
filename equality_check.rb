a = b = "joe"

a==b       # true
a.eql? b   # true
a.equal? b # true (a.object_id == b.object_id)

a = "joe"
b = "joe"

a==b       # true
a.eql? b   # true
a.equal? b # false (a.object_id != b.object_id)

a = 1
b = 1.0

a==b       # true
a.eql? b   # false (a.class != b.class)
a.equal? b # false