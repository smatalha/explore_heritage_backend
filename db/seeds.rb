# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'
# require "uri"
# require "net/http"

Category.destroy_all
Region.destroy_all
Country.destroy_all
Site.destroy_all
User.destroy_all
Comment.destroy_all
WishList.destroy_all


puts "Seeded"

cultural = Category.create(name: 'Cultural')
natural = Category.create(name: 'Natural')
mixed = Category.create(name: 'Mixed')

# categories = Category.create([
    # {name: 'Cultural'},
    # {name: 'Natural'},
    # {name: 'Mixed'}
    # ])

ena = Region.create(name: 'Europe and North America')
asia = Region.create(name: 'Asia and the Pasific')
latin = Region.create(name: 'Latin America and the Caribian')
africa = Region.create(name: 'Africa')
arab = Region.create(name: 'Arab States')

# regions = Region.create([
#     {name: 'Europe and North America'},
#     {name: 'Asia and the Pasific'},
#     {name: 'Latin America and the Caribian'},
#     {name: 'Africa'},
#     {name: 'Arab States'}
# ])

usa = Country.create(name: 'USA')
italy = Country.create(name: 'Italy')
spain = Country.create(name: 'Spain')
germany = Country.create(name: 'Germany')
turkey = Country.create(name: 'Turkey')
canada = Country.create(name: 'Canada')
senegal = Country.create(name: 'Senegal')
s_africa = Country.create(name: 'South Africa')
ethiopia = Country.create(name: 'Ethiopia')
mexico = Country.create(name: 'Mexico')
brazil = Country.create(name: 'Brazil')
peru = Country.create(name: 'Peru')
barbados = Country.create(name: 'Barbados')
austrlia = Country.create(name: 'Austrlia')
bangladesh = Country.create(name: 'Bangladesh')
japan = Country.create(name: 'Japan')
china = Country.create(name: 'China')
iran = Country.create(name: 'Iran')
lebanon = Country.create(name: 'Lebanon')
morocco = Country.create(name: 'Morocco')
tunisia = Country.create(name: 'Tunisia')

# countries = Country.create([
    #     {name: 'USA'},{name: 'Italy'},{name: 'Spain'},{name: 'Germany'},{name: 'Turkey'},{name: 'Canada'},{name: 'Senegal'},{name: 'South Africa'},{name: 'Ethiopia'},{name: 'Mexico'},{name: 'Brazil'},{name: 'Peru'},{name: 'Barbados'},{name: 'Austrlia'},{name: 'Bangladesh'},{name: 'Japan'},{name: 'China'},{name: 'Iran'},{name: 'Lebanon'},{name: 'Morocco'},{name: 'Tunisia'}
# ])
users = User.create ([
    {
        name: 'Talha',
        password_digest: '123456',
        img_url: 'https://media-exp1.licdn.com/dms/image/C5603AQF_9NG68sosag/profile-displayphoto-shrink_400_400/0?e=1602720000&v=beta&t=TbozQFyWwjpFs6VywvTRWrGhoAiekSVf7YmZNFGOkUI',
        bio: "I am ultimate traveler. I wanna explore The World as much as I can before die",
        email: '123talha@gmail.com'
    }

])
sites = Site.create([
    {
        name:  'Grand Canyon National Park',
        date_inscribed: 1979,
        latitude: 36.10083333,
        longitude: -112.0905556,
        justification: 'Carved out by the Colorado River, the Grand Canyon (nearly 1,500 m deep) is the most spectacular gorge in the world. Located in the state of Arizona, it cuts across the Grand Canyon National Park. Its horizontal strata retrace the geological history of the past 2 billion years. There are also prehistoric traces of human adaptation to a particularly harsh environment.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0075_0017-360-360-20151105155353.jpg',
        location: 'Counties of Coconino and Mohave in the State of Arizona',
        http_url: 'http://whc.unesco.org/en/list/75',
        short_description: 'The Grand Canyon is among the earth’s greatest on-going geological spectacles. Its vastness is stunning, and the evidence it reveals about the earth’s history is invaluable. The 1.5-kilometer (0.9 mile) deep gorge ranges in width from 500 m to 30 km (0.3 mile to 18.6 miles). It twists and turns 445 km (276.5 miles) and was formed during 6 million years of geologic activity and erosion by the Colorado River on the upraised earth’s crust. The buttes, spires, mesas and temples in the canyon are in fact mountains looked down upon from the rims. Horizontal strata exposed in the canyon retrace geological history over 2 billion years and represent the four major geologic eras.',
        category_id: natural.id,
        region_id: ena.id,
        country_id: usa.id
    },
    {
        name:  'Statue of Liberty',
        date_inscribed: 1979,
        latitude: 40.68944444,
        longitude: -74.04472222,
        justification: 'Made in Paris by the French sculptor Bartholdi, in collaboration with Gustave Eiffel (who was responsible for the steel framework), this towering monument to liberty was a gift from France on the centenary of American independence. Inaugurated in 1886, the sculpture stands at the entrance to New York Harbour and has welcomed millions of immigrants to the United States ever since.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0307_0005-360-360-20151105155451.jpg',
        location: 'New York, New York',
        http_url: 'http://whc.unesco.org/en/list/307',
        short_description: 'The Statue of Liberty, a hollow colossus composed of thinly pounded copper sheets over a steel framework, stands on an island at the entrance to New York Harbor. It was designed by sculptor Frédéric Bartholdi in collaboration with engineer Gustave Eiffel, and was a gift from France on the centenary of American independence in 1876. Its design and construction were recognized at the time as one of the greatest technical achievements of the 19th century and hailed as a bridge between art and engineering. Atop its pedestal (designed by American architect Richard Morris Hunt), the Statue has welcomed millions of immigrants to the United States since it was dedicated in 1886.The Statue is a masterpiece of colossal statuary, which found renewed expression in the 19th century, after the tradition of those of antiquity, but with intimations of Art Nouveau. Drawing on classical elements and iconography, it expressed modern aspirations. The interior iron framework is a formidable and intricate piece of construction, a harbinger of the future in engineering, architecture, and art, including the extensive use of concrete in the base, the flexible curtain-wall type of construction that supports the skin, and the use of electricity to light the torch. Édouard René de Laboulaye collaborated with Bartholdi for the concept of the Statue to embody international friendship, peace, and progress, and specifically the historical alliance between France and the United States. Its financing by international subscription was also significant. Highly potent symbolic elements of the design include the United States Declaration of Independence, which the Statue holds in her left hand, as well as the broken shackles from which she steps. ',
        category_id: cultural.id,
        region_id: ena.id,
        country_id: usa.id
    },
    {
        name:  'Historic Centre of Florence',
        date_inscribed: 1982,
        latitude: 43.77306,
        longitude: 11.25611,
        justification: 'Built on the site of an Etruscan settlement, Florence, the symbol of the Renaissance, rose to economic and cultural pre-eminence under the Medici in the 15th and 16th centuries. Its 600 years of extraordinary artistic activity can be seen above all in the 13th-century cathedral (Santa Maria del Fiore), the Church of Santa Croce, the Uffizi and the Pitti Palace, the work of great masters such as Giotto, Brunelleschi, Botticelli and Michelangelo.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0174_0010-360-360-20101230112109.jpg',
        location: 'City and Province of Florence, Tuscany',
        http_url: 'http://whc.unesco.org/en/list/174/',
        short_description: 'Florence was built on the site of an Etruscan settlement and the later ancient Roman colony of Florentia (founded in 59 BC). This Tuscan city became a symbol of the Renaissance during the early Medici period (between the 15th and the 16th centuries), reaching extraordinary levels of economic and cultural development. The present historic centre covers 505 ha and is bounded by the remains of the city’s 14th-century walls. These walls are represented by surviving gates, towers, and the two Medici strongholds: that of Saint John the Baptist in the north, popularly known as “da Basso”, and the Fort of San Giorgio del Belvedere located amongst the hills of the south side. The Arno River runs east and west through the city and a series of bridges connects its two banks including Ponte Vecchio and Ponte Santa Trinita.Seven hundred years of cultural and artistic blooming are tangible today in the 14th-century Cathedral of Santa Maria del Fiore, the Church of Santa Croce, the Palazzo Vecchio, the Uffizi gallery, and the Palazzo Pitti. The city’s history is further evident in the artistic works of great masters such as Giotto, Brunelleschi, Botticelli and Michelangelo.The Historic Centre of Florence can be perceived as a unique social and urban achievement, the result of persistent and long-lasting creativity, which includes museums, churches, buildings and artworks of immeasurable worth. Florence had an overwhelming influence on the development of architecture and the fine arts, first in Italy, and then in Europe. It is within the context of Florence that the concept of the Renaissance came to be. This heritage bestows upon Florence unique historical and aesthetic qualities.',
        category_id: cultural.id,
        region_id: ena.id,
        country_id: italy.id
    },
    {
        name:  'Venice and its Lagoon',
        date_inscribed: 1987,
        latitude: 45.43430556,
        longitude: 12.33894444,
        justification: "Founded in the 5th century and spread over 118 small islands, Venice became a major maritime power in the 10th century. The whole city is an extraordinary architectural masterpiece in which even the smallest building contains works by some of the world's greatest artists such as Giorgione, Titian, Tintoretto, Veronese and others.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0394_0042-360-360-20151105113125.jpg',
        location: 'Province of Venezia, Veneto Region',
        http_url: 'http://whc.unesco.org/en/list/394',
        short_description: "The UNESCO World Heritage property comprises the city of Venice and its lagoon situated in the Veneto Region of Northeast Italy. Founded in the 5th century AD and spread over 118 small islands, Venice became a major maritime power in the 10th century. The whole city is an extraordinary architectural masterpiece in which even the smallest building contains works by some of the world's greatest artists such as Giorgione, Titian, Tintoretto, Veronese and others.In this lagoon covering 50,000 km², nature and history have been closely linked since the 5th century when Venetian populations, to escape barbarian raids, found refuge on the sandy islands of Torcello, Jesolo and Malamocco. These temporary settlements gradually became permanent and the initial refuge of the land-dwelling peasants and fishermen became a maritime power. Over the centuries, during the entire period of the expansion of Venice, when it was obliged to defend its trading markets against the commercial undertakings of the Arabs, the Genoese and the Ottoman Turks, Venice never ceased to consolidate its position in the lagoon.In this inland sea that has continuously been under threat, rises amid a tiny archipelago at the very edge of the waves one of the most extraordinary built-up areas of the Middle Ages. From Torcello to the north to Chioggia to the south, almost every small island had its own settlement, town, fishing village and artisan village (Murano). However, at the heart of the lagoon, Venice itself stood as one of the greatest capitals in the medieval world. When a group of tiny islands were consolidated and organized in a unique urban system, nothing remained of the primitive topography but what became canals, such as the Giudecca Canal, St Mark's Canal and the Great Canal, and a network of small rii that are the veritable arteries of a city on water.Venice and its lagoon landscape is the result of a dynamic process which illustrates the interaction between people and the ecosystem of their natural environment over time. Human interventions show high technical and creative skills in the realization of the hydraulic and architectural works in the lagoon area. The unique cultural heritage accumulated in the lagoon over the centuries is attested by the discovery of important archaeological settlements in the Altino area and other sites on the mainland, which were important communication and trade hubs.Venice and its lagoon form an inseparable whole of which the city of Venice is the pulsating historic heart and a unique artistic achievement. The influence of Venice on the development of architecture and monumental arts has been considerable.",
        category_id: cultural.id,
        region_id: ena.id,
        country_id: italy.id
    },
    {
        name:  'The Great Wall',
        date_inscribed: 1987,
        latitude: 40.41667,
        longitude: 116.08333,
        justification: "In c. 220 B.C., under Qin Shi Huang, sections of earlier fortifications were joined together to form a united defence system against invasions from the north. Construction continued up to the Ming dynasty (1368–1644), when the Great Wall became the world's largest military structure. Its historic and strategic importance is matched only by its architectural significance.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0438_0017-360-360-20151104150232.jpg',
        location: 'Liaoning, Jilin, Hebei, Beijing, Tianjin, Shanxi, Inner Mongolia, Shaanxi, Ningxia, Gansu, Xinjiang, Shandong, Henan, Hubei, Hunan, Sichuan, Qinghai provinces, municipalities and autonomous Regions',
        http_url: 'http://whc.unesco.org/en/list/438',
        short_description: "The Great Wall was continuously built from the 3rd century BC to the 17th century AD on the northern border of the country as the great military defence project of successive Chinese Empires, with a total length of more than 20,000 kilometers. The Great Wall begins in the east at Shanhaiguan in Hebei province and ends at Jiayuguan in Gansu province to the west. Its main body consists of walls, horse tracks, watch towers, and shelters on the wall, and includes fortresses and passes along the Wall.The Great Wall reflects collision and exchanges between agricultural civilizations and nomadic civilizations in ancient China. It provides significant physical evidence of the far-sighted political strategic thinking and mighty military and national defence forces of central empires in ancient China, and is an outstanding example of the superb military architecture, technology and art of ancient China. It embodies unparalleled significance as the national symbol for safeguarding the security of the country and its people.",
        category_id: cultural.id,
        region_id: asia.id,
        country_id: china.id
    },
    {
        name:  'Mount Wuyi',
        date_inscribed: 1999,
        latitude: 27.71667,
        longitude: 117.68333,
        justification: "Mount Wuyi is the most outstanding area for biodiversity conservation in south-east China and a refuge for a large number of ancient, relict species, many of them endemic to China. The serene beauty of the dramatic gorges of the Nine Bend River, with its numerous temples and monasteries, many now in ruins, provided the setting for the development and spread of neo-Confucianism, which has been influential in the cultures of East Asia since the 11th century. In the 1st century B.C. a large administrative capital was built at nearby Chengcun by the Han dynasty rulers. Its massive walls enclose an archaeological site of great significance.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0911_0009-360-360-20131205150255.jpg',
        location: 'Wuyishan City, Fujian Province',
        http_url: 'http://whc.unesco.org/en/list/911',
        short_description: 'Mount Wuyi, located in China’s south-east province of Fujian, contains the largest, most representative example of a largely intact forest encompassing the diversity of the Chinese Subtropical Forest and the South Chinese Rainforest.  Of enormous importance for biodiversity conservation, the property acts as a refuge for an important number of ancient, relict plant species, many of them endemic to China, and contains an extremely rich flora and fauna, including significant numbers of reptile, amphibian and insect species.The serene beauty of the dramatic gorges of the Nine-Bend River is of exceptional scenic quality in its juxtaposition of smooth rock cliffs with clear, deep water. Situated along this river are numerous temples and monasteries, many now in ruins, which provided the setting for the development and spread of Neo-Confucianism, a political philosophy which has been very influential in the cultures of East Asia since the 11th century. In particular there are no fewer than 35 ancient Confucian academies dating from the Northern Song to Qing Dynasties (10th to 19th centuries CE). In addition the area contains tombs, inscriptions and rock shelters with wooden boat coffins dating back to the Shang Dynasty (2nd century BCE), and the remains of more than 60 Taoist temples and monasteries.In the 1st century BCE a large administrative capital was built at nearby Chengcun by the Han Dynasty rulers.  Its massive walls enclose an archaeological site of great significance. The property consists of four protected areas: Wuyishan National Nature Reserve in the west, Nine-Bend Stream Ecological Protection Area in the centre and Wuyishan National Scenic Area in the east are contiguous, and the Protection Area for the Remains of Ancient Han Dynasty is a separate area, about 15km to the south-east. Totalling 107,044 ha, the property is surrounded by a buffer zone of 40,170 ha and has been inscribed for cultural as well as scenic and biodiversity values.',
        category_id: mixed.id,
        region_id: asia.id,
        country_id: china.id
    },
    {
        name:  "Meidan Emam, Esfahan",
        date_inscribed: 1979,
        latitude: 32.65745,
        longitude: 51.6777777777,
        justification: 'Built by Shah Abbas I the Great at the beginning of the 17th century, and bordered on all sides by monumental buildings linked by a series of two-storeyed arcades, the site is known for the Royal Mosque, the Mosque of Sheykh Lotfollah, the magnificent Portico of Qaysariyyeh and the 15th-century Timurid palace. They are an impressive testimony to the level of social and cultural life in Persia during the Safavid era.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0115_0015-360-360-20151105103954.jpg',
        location: 'Esfahan',
        http_url: 'http://whc.unesco.org/en/list/115',
        short_description: 'The Meidan Emam is a public urban square in the centre of Esfahan, a city located on the main north-south and east-west routes crossing central Iran. It is one of the largest city squares in the world and an outstanding example of Iranian and Islamic architecture. Built by the Safavid shah Abbas I in the early 17th century, the square is bordered by two-storey arcades and anchored on each side by four magnificent buildings: to the east, the Sheikh Lotfallah Mosque; to the west, the pavilion of Ali Qapu; to the north, the portico of Qeyssariyeh; and to the south, the celebrated Royal Mosque. A homogenous urban ensemble built according to a unique, coherent, and harmonious plan, the Meidan Emam was the heart of the Safavid capital and is an exceptional urban realisation.Also known as Naghsh-e Jahan (“Image of the World”), and formerly as Meidan-e Shah, Meidan Emam is not typical of urban ensembles in Iran, where cities are usually tightly laid out without sizeable open spaces. Esfahan’s public square, by contrast, is immense: 560 m long by 160 m wide, it covers almost 9 ha. All of the architectural elements that delineate the square, including its arcades of shops, are aesthetically remarkable, adorned with a profusion of enamelled ceramic tiles and paintings.Of particular interest is the Royal Mosque (Masjed-e Shah), located on the south side of the square and angled to face Mecca. It remains the most celebrated example of the colourful architecture which reached its high point in Iran under the Safavid dynasty (1501-1722; 1729-1736). The pavilion of Ali Qapu on the west side forms the monumental entrance to the palatial zone and to the royal gardens which extend behind it. Its apartments, high portal, and covered terrace (tâlâr) are renowned. The portico of Qeyssariyeh on the north side leads to the 2-km-long Esfahan Bazaar, and the Sheikh Lotfallah Mosque on the east side, built as a private mosque for the royal court, is today considered one of the masterpieces of Safavid architecture.The Meidan Emam was at the heart of the Safavid capital’s culture, economy, religion, social power, government, and politics. Its vast sandy esplanade was used for celebrations, promenades, and public executions, for playing polo and for assembling troops. The arcades on all sides of the square housed hundreds of shops; above the portico to the large Qeyssariyeh bazaar a balcony accommodated musicians giving public concerts; the tâlâr of Ali Qapu was connected from behind to the throne room, where the shah occasionally received ambassadors. In short, the royal square of Esfahan was the preeminent monument of Persian socio-cultural life during the Safavid dynasty.',
        category_id: cultural.id,
        region_id: arab.id,
        country_id: iran.id
    },
    {
        name:  'Shirakami-Sanchi',
        date_inscribed: 1993,
        latitude: 40.47,
        longitude: 140.4525,
        justification: "Situated in the mountains of northern Honshu, this trackless site includes the last virgin remains of the cool-temperate forest of Siebold's beech trees that once covered the hills and mountain slopes of northern Japan. The black bear, the serow and 87 species of birds can be found in this forest.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0663_0002-360-360-20151105113918.jpg',
        location: 'Ajigasawa-machi, Nishitsugaru-gun, Aomori Prefecture; Fukaura-machi, Nishitsugaru-gun, Aomori Prefecture; Iwasaki-mura, Nishitsugaru-gun, Aomori Prefecture; Fujisato-machi, Yamamoto-gun, Akita Prefecture',
        http_url: 'http://whc.unesco.org/en/list/663',
        short_description: "Shirakami-Sanchi World Heritage Property is a wilderness area covering one third of Shirakami mountain range with the largest remaining virgin beech forest in East Asia. The property is located along the Sea of Japan in northern Honshu at an altitude ranging from 100 to 1,243 m above sea level. It is the remnant of the cool-temperate beech forests that have covered the hills and mountain slopes of northern Japan since eight to twelve thousand years ago.Beech (Fagus) forests are distributed across North America, Europe, and East Asia. Thought to have originated from circumpolar vegetation prior to the Last Glacial Stage, beech forests shifted their distribution from the circumpolar region to the south in the Last Glacial Stage, but in many places mountainous areas stretching east to west blocked the shifts and the vegetation became simplified. However, in Japan, the vegetation retreated to southern Japan maintaining the original diversity of the circumpolar region and re-colonized after the most recent glacial stage. The beech forest of Shirakami-Sanchi is a climax forest established in this manner and maintains various elements of Arcto-Tertiary Geoflora.Reflecting the distinct heavy-snow environment of the inland areas along the Sea of Japan, a rare climatic condition in the world, Shirakami-Sanchi has forests of monodominant Fagus crenata, a species endemic to Japan. A unique plant community with diverse flora, including undergrowth dominated by evergreen Sasa kurilensis, it is also a habitat for rare bird species such as the black woodpecker (Dryocopus martius), and large mammals such as the Japanese serow (Capricornis crispus) and Japanese black bear (Ursus thibetanus japonicas), which requires a diverse forest environment including old-growth forest. As these and other species are all interacting as functional elements of the ecosystem, the property keeps the complete ecosystem of stable climax beech forest.",
        category_id: natural.id,
        region_id: asia.id,
        country_id: japan.id
    },
    {
        name:  'Ouadi Qadisha (the Holy Valley) and the Forest of the Cedars of God (Horsh Arz el-Rab)',
        date_inscribed: 1998,
        latitude: 34.24333,
        longitude: 36.04889,
        justification: "The Qadisha valley is one of the most important early Christian monastic settlements in the world. Its monasteries, many of which are of a great age, stand in dramatic positions in a rugged landscape. Nearby are the remains of the great forest of cedars of Lebanon, highly prized in antiquity for the construction of great religious buildings.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0850_0021-360-360-20151104123519.jpg',
        location: 'Qadisha Valley, Becharre District, Governorate of North Lebanon',
        http_url: 'http://whc.unesco.org/en/list/850',
        short_description: "Ouadi Qadisha is one of the most important settlement sites of the first Christian monasteries in the world, and its monasteries, many of which of great age, are set in an extraordinarily rugged landscape. Nearby are the vestiges of the great cedar forest of Lebanon, highly prized in ancient times for the construction of great religious buildings.The Qadisha Valley site and the Forest of the Cedars of God (Horsh Arz el-Rab) are located in northern Lebanon. The Qadisha Valley is located North of Mount-Lebanon chain, at the foot of Mount al-Makmel and West of the Forest of the Cedars of God. The Holy River Qadisha, celebrated in the Scriptures, runs through the Valley. The Forest of the Cedars of God is located on Mount Makmel, between 1900 and 2050 m altitude and to the East of the village of Bcharré.The rocky cliffs of the Qadisha Valley have served over centuries as a place for meditation and refuge. The Valley comprises the largest number of monasteries and hermitages dating back to the very first spread of Christianism. The main monasteries are those of St Anthony of Quzhayya, Our Lady of Hauqqa, Qannubin and Mar Lichaa. This Valley bears unique witness to the very centre of Maronite eremitism. Its natural caves, carved into the hillsides - almost inaccessible - and decorated with frescoes testifying to an architecture specifically conceived for the spiritual and vital needs of an austere life. There exist numerous terraces for growing grain by the monks, hermits and peasants who lived in the region; several of these terraces are still under cultivation today.Linked to the Qadisha Valley through historic reference and contiguity, the Forest of the Cedars of God is the last vestige of antique forests and one of the rare sites where the Cedrus lebani still grows, one of the most valued construction materials in the antique world and cited 103 times in the Bible.",
        category_id: cultural.id,
        region_id: arab.id,
        country_id: lebanon.id
    },
    {
        name:  'Tehuacán-Cuicatlán Valley: originary habitat of Mesoamerica',
        date_inscribed: 2018,
        latitude: 17.9899611111,
        longitude: -97.1871527778,
        justification: "Tehuacán-Cuicatlán Valley, part of the Mesoamerican region, is the arid or semi-arid zone with the richest biodiversity in all of North America. Consisting of three components, Zapotitlán-Cuicatlán, San Juan Raya and Purrón, it is one of the main centres of diversification for the cacti family, which is critically endangered worldwide. The valley harbours the densest forests of columnar cacti in the world, shaping a unique landscape that also includes agaves, yuccas and oaks. Archaeological remains demonstrate technological developments and the early domestication of crops. The valley presents an exceptional water management system of canals, wells, aqueducts and dams, the oldest in the continent, which has allowed for the emergence of agricultural settlements.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_1534_0014-360-360-20170607174402.jpg',
        location: 'N17 59 23.86 W97 11 13.75',
        http_url: 'http://whc.unesco.org/en/list/1534',
        short_description: "The Tehuacán-Cuicatlán: originary habitat of Mesoamerica is located in central-southern Mexico, at the southeast of the State of Puebla and north of the State of Oaxaca. The property is a serial site of some 145,255 ha composed of three components: Zapotitlán-Cuicatlán, San Juan Raya and Purrón. All these share the same buffer zone of some 344,932 ha. The entire property is located within the Tehuacán-Cuicatlán Biosphere Reserve. The property coincides with a global biodiversity hotspot and lies within an arid or semiarid zone with one of the highest levels of biological diversity in North America, giving rise to human adaptations crucial to the emergence of Mesoamerica, one of the cradles of civilisation in the world.Of the 36 plant communities, 15 different xeric shrublands are exclusive to the Tehuacán- Cuicatlán Valley. The valley includes representatives of a remarkable 70% of worldwide flora families and includes over 3,000 species of vascular plants of which 10% are endemic to the Valley. It is also a global centre of agrobiodiversity and diversification for numerous groups of plants, in which the cacti stand out, with 28 genera and 86 species of which 21 are endemic. Large “cacti-forests” shape some landscapes of the Valley making it one of the most unique areas in the world.The property exhibits the impressively high levels of faunal diversity known in this region including very high levels of endemism among mammals, birds, amphibians and fish. It also hosts an unusually high number of threatened species with some 38 listed under the IUCN Red List of Threatened Species. The property is one of the richest protected areas in Mexico in terms of terrestrial mammals (134 species registered, two of them endemic to the Valley). The Tehuacán-Cuicatlán Valley is part of the Balsas Region and Interior Oaxaca Endemic Bird Area (EBA). There are 353 bird species recorded, of which nine are endemic to Mexico. The property has eight known roosting areas of the threatened Green Macaw including a breeding colony.The vast biodiversity of the Valley, combined with the adverse conditions of a desert, gave rise to one of the largest and best documented cultural sequences in the Americas. The archaeological evidence reveals the long sequence of human adaptations that took place in the area for over 12,000 years. The Tehuacán-Cuicatlán Valley is an exceptional example of a long process of adaptations and ancient technological evolution that defined the cultural region known today as Mesoamerica.",
        category_id: mixed.id,
        region_id: latin.id,
        country_id: mexico.id
    },
    {
        name:  'Medina of Marrakesh',
        date_inscribed: 1985,
        latitude: 31.63139,
        longitude: -7.98667,
        justification: "Founded in 1070–72 by the Almoravids, Marrakesh remained a political, economic and cultural centre for a long period. Its influence was felt throughout the western Muslim world, from North Africa to Andalusia. It has several impressive monuments dating from that period: the Koutoubiya Mosque, the Kasbah, the battlements, monumental doors, gardens, etc. Later architectural jewels include the Bandiâ Palace, the Ben Youssef Madrasa, the Saadian Tombs, several great residences and Place Jamaâ El Fna, a veritable open-air theatre.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0331_0005-360-360-20090610110103.jpg',
        location: 'Province of Marrakesh',
        http_url: 'http://whc.unesco.org/en/list/331',
        short_description:"Founded in 1070-1072 by the Almoravids (1056-1147), capital of the Almohads (1147-1269), Marrakesh was, for a long time, a major political, economic and cultural centre of the western Muslim world, reigning in North Africa and Andalusia. Vast monuments dating back to that period: Koutoubia Mosque, with the matchless minaret of 77 metres, an essential monument of Muslim architecture, is one of the important landmarks of the urban landscape and the symbol of the City, the Kasbah, ramparts, monumental gates and gardens. Later, the town welcomed other marvels, such as the Badiâ Palace, the Ben Youssef merdersa, les Saâdians tombs,  Bahia Palace and large residences. Jamaâ El Fna Square, inscribed on the Representative List of the Intangible Cultural Heritage, is a true open-air theatre that always amazes visitors. Due to its still protected, original and well conserved conception, its construction materials and decoration in constant use, and its natural environment (notably the Gardens of Aguedal, Ménara and the Palm Grove (Palmeraie) the plantation of which is attributed to the Almoravids), the Medina of Marrakesh possesses all its initial components both cultural and natural that illustrate its Outstanding Universal Value.",
        category_id: cultural.id,
        region_id: arab.id,
        country_id: morocco.id
    },
    {
        name:  'Historic Sanctuary of Machu Picchu',
        date_inscribed: 1983,
        latitude: -13.11666667,
        longitude: -72.58333333,
        justification: "Machu Picchu stands 2,430 m above sea-level, in the middle of a tropical mountain forest, in an extraordinarily beautiful setting. It was probably the most amazing urban creation of the Inca Empire at its height; its giant walls, terraces and ramps seem as if they have been cut naturally in the continuous rock escarpments. The natural setting, on the eastern slopes of the Andes, encompasses the upper Amazon basin with its rich diversity of flora and fauna.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0274_0001-360-360-20151105151608.jpg',
        location: 'Peru',
        http_url: 'http://whc.unesco.org/en/list/274',
        short_description: "Embedded within a dramatic landscape at the meeting point between the Peruvian Andes and the Amazon Basin, the Historic Sanctuary of Machu Picchu is among the greatest artistic, architectural and land use achievements anywhere and the most significant tangible legacy of the Inca civilization. Recognized for outstanding cultural and natural values, the mixed World Heritage property covers 32,592 hectares of mountain slopes, peaks and valleys surrounding its heart, the spectacular archaeological monument of “La Ciudadela” (the Citadel) at more than 2,400 meters above sea level. Built in the fifteenth century Machu Picchu was abandoned when the Inca Empire was conquered by the Spaniards in the sixteenth century. It was not until 1911 that the archaeological complex was made known to the outside world.The approximately 200 structures making up this outstanding religious, ceremonial, astronomical and agricultural centre are set on a steep ridge, crisscrossed by stone terraces. Following a rigorous plan the city is divided into a lower and upper part, separating the farming from residential areas, with a large square between the two. To this day, many of Machu Picchu’s mysteries remain unresolved, including the exact role it may have played in the Incas’ sophisticated understanding of astronomy and domestication of wild plant species.The massive yet refined architecture of Machu Picchu blends exceptionally well with the stunning natural environment, with which it is intricately linked. Numerous subsidiary centres, an extensive road and trail system, irrigation canals and agricultural terraces bear witness to longstanding, often on-going human use. The rugged topography making some areas difficult to access has resulted in a mosaic of used areas and diverse natural habitats. The Eastern slopes of the tropical Andes with its enormous gradient from high altitude “Puna” grasslands and Polylepis thickets to montane cloud forests all the way down towards the tropical lowland forests are known to harbour a rich biodiversity and high endemism of global significance. Despite its small size the property contributes to conserving a very rich habitat and species diversity with remarkable endemic and relict flora and fauna.",
        category_id: mixed.id,
        region_id: latin.id,
        country_id: peru
    },
    {
        name:  'Niokolo-Koba National Park',
        date_inscribed: 1981,
        latitude: 13.06667,
        longitude: -12.71667,
        justification: "Located in a well-watered area along the banks of the Gambia river, the gallery forests and savannahs of Niokolo-Koba National Park have a very rich fauna, among them Derby elands (largest of the antelopes), chimpanzees, lions, leopards and a large population of elephants, as well as many birds, reptiles and amphibians.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0153_0031-360-360-20151105161747.jpg',
        location: 'Eastern Senegal and Upper Casamance regions',
        http_url: 'http://whc.unesco.org/en/list/153',
        short_description: "Located in the Sudano-Guinean zone, Niokolo-Koba National Park is characterized by its group of ecosystems typical of this region, over an area of 913 000ha. Watered by large waterways (the Gambia, Sereko, Niokolo, Koulountou), it comprises gallery forests, savannah grass floodplains, ponds, dry forests -- dense or with clearings -- rocky slopes and hills and barren Bowés. This remarkable plant diversity justifies the presence of a rich fauna characterized by: the Derby Eland (the largest of African antelopes), chimpanzees, lions, leopards, a large population of elephants as well as many species of birds, reptiles and amphibians.",
        danger: true,
        category_id: natural.id,
        region_id: africa.id,
        country_id: senegal.id
    },
    {
        name:  'Cape Floral Region Protected Areas',
        date_inscribed: 2004,
        latitude: -34.3611111111,
        longitude: 18.475,
        justification: "Inscribed on the World Heritage List in 2004, the property is located at the south-western extremity of South Africa. It is one of the world’s great centres of terrestrial biodiversity. The extended property includes national parks, nature reserves, wilderness areas, State forests and mountain catchment areas. These elements add a significant number of endemic species associated with the Fynbos vegetation, a fine-leaved sclerophyllic shrubland adapted to both a Mediterranean climate and periodic fires, which is unique to the Cape Floral Region.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_1007_0007-360-360-20151105153756.jpg',
        location: 'S34 21 40 E18 28 30',
        http_url: 'http://whc.unesco.org/en/list/1007',
        short_description: "The Cape Floral Region has been recognised as one of the most special places for plants in the world in terms of diversity, density and number of endemic species. The property is a highly distinctive phytogeographic unit which is regarded as one of the six Floral Kingdoms of the world and is by far the smallest and relatively the most diverse. It is recognised as one of the world’s ʻhottest hotspotsʼ for its diversity of endemic and threatened plants, and contains outstanding examples of significant ongoing ecological, biological and evolutionary processes. This extraordinary assemblage of plant life and its associated fauna is represented by a series of 13 protected area clusters covering an area of more than 1 million ha. These protected areas also conserve the outstanding ecological, biological and evolutionary processes associated with the beautiful and distinctive Fynbos vegetation, unique to the Cape Floral Region.",
        category_id: natural.id,
        region_id: africa.id,
        country_id: s_africa.id
    },
    {
        name:  'Tower of Hercules',
        date_inscribed: 2009,
        latitude: 43.3858333333,
        longitude: -8.4063888889,
        justification: "The Tower of Hercules has served as a lighthouse and landmark at the entrance of La Coruña harbour in north-western Spain since the late 1st century A.D. when the Romans built the Farum Brigantium. The Tower, built on a 57 metre high rock, rises a further 55 metres, of which 34 metres correspond to the Roman masonry and 21 meters to the restoration directed by architect Eustaquio Giannini in the 18th century, who augmented the Roman core with two octagonal forms. Immediately adjacent to the base of the Tower, is a small rectangular Roman building. The site also features a sculpture park, the Monte dos Bicos rock carvings from the Iron Age and a Muslim cemetery. The Roman foundations of the building were revealed in excavations conducted in the 1990s. Many legends from the Middle Ages to the 19th century surround the Tower of Hercules, which is unique as it is the only lighthouse of Greco-Roman antiquity to have retained a measure of structural integrity and functional continuity.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_1312_0002-360-360-20151105160941.jpg',
        location: 'N43 23 9 W8 24 23',
        http_url: 'http://whc.unesco.org/en/list/1312',
        short_description: "The Tower of Hercules is the only fully preserved Roman lighthouse that is still used for maritime signaling, hence it is testimony to the elaborate system of navigation in antiquity and it provides an understanding of the Atlantic sea route in Western Europe. The Tower of Hercules was restored in the 18th century in an exemplary manner, which has protected the central core of the original Roman monument while restoring its technical functions.",
        category_id: cultural.id,
        region_id: ena.id,
        country_id: spain.id
    },
    {
        name:  'Medina of Tunis',
        date_inscribed: 1979,
        latitude: 36.81667,
        longitude: 10.16667,
        justification: "Under the Almohads and the Hafsids, from the 12th to the 16th century, Tunis was considered one of the greatest and wealthiest cities in the Islamic world. Some 700 monuments, including palaces, mosques, mausoleums, madrasas and fountains, testify to this remarkable past.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0036_0025-360-360-20151009151632.jpg',
        location: 'Tunis',
        http_url: 'http://whc.unesco.org/en/list/36',
        short_description: "Located in a fertile plain region of north-eastern Tunisia, and a few kilometres from the sea, the Medina of Tunis is one of the first Arabo-Muslim towns of the Maghreb (698 A.D.). Capital of several universally influential dynasties, it represents a human settlement that bears witness to the interaction between architecture, urbanism and the effects of socio-cultural and economic changes of earlier cultures. Under the Almohads and the Hafsids, from the 12th to the 16th century, Tunis was considered one of the greatest and wealthiest cities in the Arab world. Numerous testimonies from this and earlier periods exist today. Between the 16th and 19th centuries, new powers endowed the city with numerous palaces and residences, great mosques, zaouias and madrasas.The inscribed property covers an area of approximately 280 ha and comprises all the features of an Arabo-Muslim city. It is composed of the central medina (8th century) and suburbs to the North and South (13th century). There are some 700 historic monuments, distributed in 7 areas, among which the most remarkable are the Zitouna Mosque, the Kasbah Mosque, the Youssef Dey Mosque, Bab Jedid Gate, Bab Bhar Gate, the Souq el-Attarine, the Dar el-Bey, Souqs ech-Chaouachia, the Tourbet (family cemetery) el Bey, noble houses such as Dar Hussein, Dar Ben Abdallah, Dar Lasram, the Medrasa Es- Slimanya and El-Mouradia, the El Attarine military barracks and the Zaouia of Sidi Mehrez.With its souqs, its urban fabric, its residential quarters, monuments and gates, this ensemble constitutes a prototype among the best conserved in the Islamic world.",
        category_id: cultural,
        region_id: arab.id,
        country_id: tunisia.id
    },
    {
        name:  'Great Mosque and Hospital of Divriği',
        date_inscribed: 1985,
        latitude: 39.371271,
        longitude: 38.121826,
        justification: "This region of Anatolia was conquered by the Turks at the beginning of the 11th century. In 1228–29 Emir Ahmet Shah founded a mosque, with its adjoining hospital, at Divrigi. The mosque has a single prayer room and is crowned by two cupolas. The highly sophisticated technique of vault construction, and a creative, exuberant type of decorative sculpture – particularly on the three doorways, in contrast to the unadorned walls of the interior – are the unique features of this masterpiece of Islamic architecture.",
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0358_0002-360-360-20151105163414.jpg',
        location: 'City and District of Divriği, Province of Sivas (Eastern Anatolia)',
        http_url: 'http://whc.unesco.org/en/list/358',
        short_description: "Located on the slopes below the castle of Divriği, Sivas Province in central eastern t, the .idGreat Mosque and Hospital of Divriği is a remarkable building combining a monumental hypostyle mosque with a two storey hospital, which includes a tomb. Founded by the Mengücekide emir Ahmed Shah following the victory of the Seljuk Turks over the Byzantine army at the battle of Malazgirt in 1071, the mosque is dominated externally by the hexagonal, pointed roofed dome over its mihrab (prayer niche), a cupola over the ablutions basin in the centre of the prayer hall and elaborately carved monumental stone portals on the north and west. Internally, four rows of four piers create five naves roofed by a variety of intricately carved stone vaults. The adjoining hospital, the Darush-shifa, was founded by Ahmet Shah’s wife Turan Melek and designed by the architect Hurrem Shah, in 1228-1229. It is entered via a monumental, elaborately carved stone portal on the west, leading into a double height atrium formed by four massive piers supporting a dome with an oculus over a central pool, around which are located the hospital rooms.The highly sophisticated technique of vault construction and a creative, exuberant type of decorative sculpture – particularly on the three doorways, in contrast to the unadorned walls of the interior – are the unique features of this masterpiece of Islamic architecture. The variety of the carved decoration indicates that is was carried out by different groups of craftsmen. The main characteristic of the designs featured in the portals is their uniqueness: each is distinct from other decorations. As well as portals, all bases, shafts and capitals of the columns, and the inner surface of the dome and the vaults, were decorated in a distinct and unique style. There are no other examples of the three-dimensional and intricate geometric styles and flowing figures of plants. The vaulting of the hospital room is comparable in scientific achievement to that of the prayer hall of the Mosque, and shares the splendid unity of the Great Mosque.",
        category_id: cultural.id,
        region_id: ena.id,
        country_id: turkey.id
    },
    {
        name:  'Aachen Cathedral',
        date_inscribed: 1978,
        latitude: 50.77444444,
        longitude: 6.084444444,
        justification: 'Construction of this palatine chapel, with its octagonal basilica and cupola, began c. 790–800 under the Emperor Charlemagne. Originally inspired by the churches of the Eastern part of the Holy Roman Empire, it was splendidly enlarged in the Middle Ages.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0003_0019-360-360-20151104122121.jpg',
        location: 'State of North Rhine-Westphalia (Nordrhein-Westfalen)',
        http_url: 'http://whc.unesco.org/en/list/3',
        short_description: "It is Emperor Charlemagne´s own Palatine Chapel, which constitutes the nucleus of the Cathedral of Aachen, located in western Germany. The construction of the chapel between 793 and 813 symbolises the unification of the West and its spiritual and political revival under the aegis of Charlemagne. Originally inspired by the churches of the eastern part of the Holy Roman Empire, the octagonal core was splendidly enlarged in the Middle Ages. In 814, Charlemagne was buried here.Charlemagne made the Frankish royal estate of Aachen, which had been serving a spa ever since the first century, his favourite abode. The main buildings of the Imperial Palace area were the Coronation Hall (aula regia – located in today´s Town Hall) and the Palace Chapel – now Aachen Cathedral. The Palatine Chapel is based on an octagonal ground plan, which is surrounded by an aisle and by tribunes above, and roofed with a dome. Facing the altar, the Emperor sat on the gallery; the Carolingian stone throne was the coronation seat of the kings of the Holy Roman Empire of German Nation from the Middle Ages until 1531. The chapel itself is easily recognizable from later additions by its distinctive structure. An atrium on the western side and a portico led to the imperial apartments. The Gothic choir and a series of chapels that were added throughout the Middle Ages created the composite array of features that characterised the cathedral.The interior is punctuated on the lower storey by round arches set upon eight ample pillars, and on the upper storey by a gallery with eight Carolingian bronze gates. The high dome gathers light from eight open-arched windows above the drum; it was originally entirely covered with a large mosaic depicting Christ Enthroned, in purple robes and surrounded by the Elders of the Apocalypse. The present-day mosaic dates back to 1880/1881. The interior of the chapel is embellished by antique columns that Charlemagne probably ordered to be brought from Rome and Ravenna. Despite the subsequent additions, the Palatine Chapel constitutes a homogeneous nucleus.The Cathedral Treasury in Aachen is regarded as one of the most important ecclesiastical treasuries in northern Europe; the most prominent inventory items are the cross of Lothar (about 1000 AD), made from gold and inlaid with precious stones, the dark-blue velvet chasuble with embroidered pearls, a reliquary-bust of Charlemagne made from silver and gold, and a marble sarcophagus decorated with a relief of the Abduction of Proserpine, which once contained the body of Charlemagne.",
        category_id:cultural.id,
        region_id: ena.id,
        country_id: germany.id
    },

    {
        name:  'Simien National Park',
        date_inscribed: 1978,
        latitude: 13.1833333333,
        longitude: 38.0666666667,
        justification: 'Massive erosion over the years on the Ethiopian plateau has created one of the most spectacular landscapes in the world, with jagged mountain peaks, deep valleys and sharp precipices dropping some 1,500 m. The park is home to some extremely rare animals such as the Gelada baboon, the Simien fox and the Walia ibex, a goat found nowhere else in the world.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0009_0005-360-360-20151104173701.jpg',
        location: 'Gondar Region',
        http_url: 'http://whc.unesco.org/en/list/9',
        short_description: 'Simien National Park, in northern Ethiopia is a spectacular landscape, where massive erosion over millions of years has created jagged mountain peaks, deep valleys and sharp precipices dropping some 1,500 m. The park is of global significance for biodiversity conservation because it is home to globally threatened species, including the iconic Walia ibex, a wild mountain goat found nowhere else in the world, the Gelada baboon and the Ethiopian wolf.',
        category_id: natural.id,
        region_id: africa.id,
        country_id: ethiopia.id
    },
    {
        name:  'SGang Gwaay',
        date_inscribed: 1981,
        latitude: 52.095,
        longitude: -131.2202778,
        justification: "The village of Ninstints (Nans Dins) is located on a small island off the west coast of the Queen Charlotte Islands (Haida Gwaii). Remains of houses, together with carved mortuary and memorial poles, illustrate the Haida people's art and way of life. The site commemorates the living culture of the Haida people and their relationship to the land and sea, and offers a visual key to their oral traditions.",
        image_url: 'http://whc.unesco.org/uploads/thumbs/site_0157_0001-360-360-20090924182044.jpg',
        location: 'Province of British Columbia',
        http_url: 'http://whc.unesco.org/en/list/157',
        short_description: "On the island of SG̱ang Gwaay, the remains of large cedar long houses, together with a number of carved mortuary and memorial poles at the village of SG̱ang Gwaay Llnagaay (formerly Nan Sdins), illustrate the art and way of life of the Haida. The property commemorates the living culture of the Haidaand their relationship with the land and sea. It also offers a visual key to their oral traditions. The village of SG̱ang Gwaay was occupied until shortly after 1880. What survives is unique in the world, a 19th-century Haida village where the ruins of houses and memorial or mortuary poles illustrate the power and artistry of Haida society.",
        category_id: cultural.id,
        region_id: ena.id,
        country_id: canada.id
    },
    {
        name: 'Iguaçu National Park',
        date_inscribed: 1986,
        latitude: -25.68333,
        longitude: -54.43333,
        justification: 'The park shares with Iguazú National Park in Argentina one of the world’s largest and most impressive waterfalls, extending over some 2,700 m. It is home to many rare and endangered species of flora and fauna, among them the giant otter and the giant anteater. The clouds of spray produced by the waterfall are conducive to the growth of lush vegetation.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0355_0003-360-360-20151104162419.jpg',
        location: 'Paraná State',
        http_url: 'http://whc.unesco.org/en/list/355',
        short_description: "The Iguaçu National Park is a World Heritage property of 169,695.88 hectares located in the State of Paraná, in southern Brazil, adjacent to the Iguazú National Park, also a World Heritage property in Argentina. Both properties, together with some protected areas, are contiguous major remnants of the interior Atlantic Forest, once a much larger forest area, along the junction of the Iguaçu and Paraná rivers where Paraguay, Argentina, and Brazil converge.The landscape is the result of volcanic processes dating back 500 million years, which forged its stunning geomorphological features. The Park's main attraction – and a major destination for international and domestic tourism – is the impressive waterfalls system of the Iguaçu (or Iguazú) river, renowned for its visual and acoustic beauty, which spans nearly three kilometers with vertical drops of up to 80 meters. The river, named after the indigenous term for “great water”, forms a semi-circle in the heart of the two parks and constitutes the international border between Argentina and Brazil before flowing into the mighty Paraná River, 25 kilometres downstream from the park. The property houses the single entirely preserved hydrographic basin of the State of Paraná, the basin of the Floriano River.Both Parks also comprise semi-deciduous subtropical rainforests with a high degree of diversity and endemism, harboring numerous rare charismatic species. Today they are mostly surrounded by a landscape that has been strongly altered due to heavy logging, both historic and into the present, the intensification and expansion of both industrial and small-scale agriculture, plantation forestry for pulp and paper and rural settlements. Jointly, the Brazilian and Argentinian parks total around 250,000 hectares with this property’s contribution being 169,695.88 hectares.  ",
        category_id: natural.id,
        region_id: latin.id,
        country_id: brazil.id
    },
    {
        name:  'Historic Bridgetown and its Garrison',
        date_inscribed: 2011,
        latitude: 13.0966666667,
        longitude: -59.6138888889,
        justification: "Historic Bridgetown and its Garrison, an outstanding example of British colonial architecture consisting of a well-preserved old town built in the 17th, 18th and 19th centuries, which testifies to the spread of Great Britain's Atlantic colonial empire. The property also includes a nearby military garrison which consists of numerous historic buildings. With its serpentine urban lay-out the property testifies to a different approach to colonial town-planning compared to the Spanish and Dutch colonial cities of the region which were built along a grid plan.",
        image_url: 'http://whc.unesco.org/uploads/thumbs/site_1376_0010-360-360-20151104154813.jpg' ,
        location: 'N13 5 48 W59 36 50',
        http_url: 'http://whc.unesco.org/en/list/1376',
        short_description: "As one of the earliest established towns with a fortified port in the Caribbean network of military and maritime-mercantile outposts of the British Atlantic, Historic Bridgetown and its Garrison was the focus of trade-based English expansion in the Americas. By the 17th century, the fortified port town was able to establish its importance in the British Atlantic trade and became an entrepôt for goods, especially sugar, and enslaved persons destined for Barbados and the rest of the Americas.Historic Bridgetown’s irregular settlement patterns and 17th Century street layout of an English medieval type, in particular the organic serpentine streets, supported the development and transformation of creolized forms of architecture, including Caribbean Georgian.Historic Bridgetown’s fortified port spaces were linked along the Bay Street corridor from the historic town’s centre to St. Ann’s Garrison. The property’s natural harbour, Carlisle Bay, was the first port of call on the trans-Atlantic crossing and was perfectly positioned as the launching point for the projection of British imperial power, to defend and expand Britain’s trade interests in the region and the Atlantic World. Used as a base for amphibious command and control, the garrison housed the Eastern Caribbean headquarters of the British Army and Navy. Historic Bridgetown and its Garrison participated not only in the international trade of goods and enslaved persons but also in the transmission of ideas and cultures that characterized the developing colonial enterprise in the Atlantic World.",
        category_id: cultural.id,
        region_id: latin.id,
        country_id: barbados.id
    },
    {
        name:  'The Sundarbans',
        date_inscribed: 1997,
        latitude: 21.95,
        longitude: 89.18333,
        justification: 'The Sundarbans mangrove forest, one of the largest such forests in the world (140,000 ha), lies on the delta of the Ganges, Brahmaputra and Meghna rivers on the Bay of Bengal. It is adjacent to the border of India’s Sundarbans World Heritage site inscribed in 1987. The site is intersected by a complex network of tidal waterways, mudflats and small islands of salt-tolerant mangrove forests, and presents an excellent example of ongoing ecological processes. The area is known for its wide range of fauna, including 260 bird species, the Bengal tiger and other threatened species such as the estuarine crocodile and the Indian python.',
        image_url:  'http://whc.unesco.org/uploads/thumbs/site_0798_0006-360-360-20120827171714.jpg',
        location: 'South-Western Region (Khulna Division)',
        http_url: 'http://whc.unesco.org/en/list/798',
        short_description: 'The Sundarbans Reserve Forest (SRF), located in the south-west of Bangladesh between the river Baleswar in the East and the Harinbanga in the West, adjoining to the Bay of Bengal, is the largest contiguous mangrove forest in the world. Lying between latitude 21° 27′ 30″ and 22° 30′ 00″ North and longitude 89° 02′ 00″ and 90° 00′ 00″ East and with a total area of 10,000 km2, 60% of the property lies in Bangladesh and the rest in India. The land area, including exposed sandbars, occupies 414,259 ha (70%) with water bodies covering 187,413 ha (30%).The three wildlife sanctuaries in the south cover an area of 139,700 ha and are considered core breeding areas for a number of endangered species. Situated in a unique bioclimatic zone within a typical geographical situation in the coastal region of the Bay of Bengal, it is a landmark of ancient heritage of mythological and historical events. Bestowed with magnificent scenic beauty and natural resources, it is internationally recognized for its high biodiversity of mangrove flora and fauna both on land and water.The immense tidal mangrove forests of Bangladeshs’ Sundarbans Forest Reserve, is in reality a mosaic of islands of different shapes and sizes, perennially washed by brackish water shrilling in and around the endless and mind-boggling labyrinths of water channels. The site supports exceptional biodiversity in its terrestrial, aquatic and marine habitats; ranging from micro to macro flora and fauna. The Sundarbans is of universal importance for globally endangered species including the Royal Bengal Tiger, Ganges and Irawadi dolphins, estuarine crocodiles and the critically endangered endemic river terrapin (Batagur baska).  It is the only mangrove habitat in the world for Panthera tigris tigris species.',
        category_id: natural.id,
        region_id: asia.id,
        country_id: bangladesh.id
    },
    {
        name:  'Great Barrier Reef',
        date_inscribed: 1981,
        latitude: -18.28611111,
        longitude: 147.7,
        justification: "The Great Barrier Reef is a site of remarkable variety and beauty on the north-east coast of Australia. It contains the world’s largest collection of coral reefs, with 400 types of coral, 1,500 species of fish and 4,000 types of mollusc. It also holds great scientific interest as the habitat of species such as the dugong (‘sea cow’) and the large green turtle, which are threatened with extinction.",
        image_url: 'http://whc.unesco.org/uploads/thumbs/site_0154_0006-360-360-20151104132156.jpg',
        location: 'Off the east coast of the Queensland mainland',
        http_url: 'http://whc.unesco.org/en/list/154',
        short_description: 'As the world’s most extensive coral reef ecosystem, the Great Barrier Reef is a globally outstanding and significant entity. Practically the entire ecosystem was inscribed as World Heritage in 1981, covering an area of 348,000 square kilometres and extending across a contiguous latitudinal range of 14o (10oS to 24oS). The Great Barrier Reef (hereafter referred to as GBR) includes extensive cross-shelf diversity, stretching from the low water mark along the mainland coast up to 250 kilometres offshore. This wide depth range includes vast shallow inshore areas, mid-shelf and outer reefs, and beyond the continental shelf to oceanic waters over 2,000 metres deep.Within the GBR there are some 2,500 individual reefs of varying sizes and shapes, and over 900 islands, ranging from small sandy cays and larger vegetated cays, to large rugged continental islands rising, in one instance, over 1,100 metres above sea level. Collectively these landscapes and seascapes provide some of the most spectacular maritime scenery in the world.The latitudinal and cross-shelf diversity, combined with diversity through the depths of the water column, encompasses a globally unique array of ecological communities, habitats and species. This diversity of species and habitats, and their interconnectivity, make the GBR one of the richest and most complex natural ecosystems on earth. There are over 1,500 species of fish, about 400 species of coral, 4,000 species of mollusk, and some 240 species of birds, plus a great diversity of sponges, anemones, marine worms, crustaceans, and other species. No other World Heritage property contains such biodiversity. This diversity, especially the endemic species, means the GBR is of enormous scientific and intrinsic importance, and it also contains a significant number of threatened species. Attime of inscription, the IUCN evaluation stated "… if only one coral reef site in the world were to be chosen for the World Heritage List, the Great Barrier Reef is the site to be chosen".',
        category_id: natural.id,
        region_id: asia.id,
        country_id: austrlia.id
    }
])

comments = Comment.create ([
    {
        content: 'I love this site',
        user: users.first,
        site: sites.second
    }
])
# Character.create(name: 'Luke', movie: movies.first)

wishlists = WishList.create ([
    {
        user: users.first,
        site: sites.second
    },
    {
        user: users.first,
        site: sites.first
    }
])
