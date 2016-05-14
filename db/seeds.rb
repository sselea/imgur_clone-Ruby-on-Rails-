


category_list = ["Art", "Nature", "Space", "Sports", "Politics"]
category_list.each { |cat| Category.create(name: cat)}

post_list = [
              [ "Life on Fire", "http://i.imgur.com/zFaaXsb.jpg?1", 1,  1],
              [ "Penrose Filigree Ink pointillism", "http://i.imgur.com/tdnvKDK.jpg", 1, 1],
              [ "Trump Card", "http://i.imgur.com/0bT0LAi.jpg", 1,  1],
              [ "Panda Bear",  "http://i.imgur.com/1eqYizA.jpg", 1, 1],
              [ "Forgotten Wall", "http://i.imgur.com/uD7nktF.jpg", 1,  1],
              ["Norman Reedus", "http://i.imgur.com/d0jX7rt.jpg?1", 1, 1],
              ["Snowy Bear",  "http://i.imgur.com/U7MhFQY.jpg", 1, 1]
             ["Flow", "http://i.imgur.com/tXtwrPd.jpg", 2, 2],
             ["Fog", "http://i.imgur.com/IVyU5Im.jpg",2,2],
             ["Stars", "http://i.imgur.com/QguApMA.jpg", 2, 2],
             ["Wall", "http://i.imgur.com/yxovJ4Sr.jpg", 2, 2],
             ["Hole", "http://i.imgur.com/PnSeZX3.jpg", 2, 2],
             ["Creeps", "http://i.imgur.com/IVefonq.jpg,",2 ,2]
             ["Star", "http://i.imgur.com/cplXyB9.jpg", 3, 3],
             ["Wars", "http://i.imgur.com/zH38b9F.jpg", 3, 3],
             ["Jedi", "http://i.imgur.com/hLGH5uk.jpg", 3, 3],
             ["Luke", "http://i.imgur.com/My4w4x8.jpg", 3, 3],
             ["Toupee", "http://i.imgur.com/080ENQD.jpg", 4, 4],
             ["Billary", "http://i.imgur.com/yGuoxZd.jpg", 4, 4],
             ["Sensitive Putin", "http://i.imgur.com/hSmO0tb.jpg", 4, 4],
             ["Trudeau", "http://i.imgur.com/GsXBVE7.jpg", 4, 4]
             ]

post_list.each { |p| Post.create(title: p[0], source: p[1], user_id: p[2], category_id: p[3] ) }
