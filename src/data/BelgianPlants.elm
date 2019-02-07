module BelgianPlants exposing (belgianPlantsQuiz, latinPlantsQuiz)

import Array
import Quiz exposing (ImgQuizItem, QuizQa)


belgianPlantsQuiz : Array.Array QuizQa
belgianPlantsQuiz =
    Array.fromList
        (List.map
            (\bird ->
                { question = "/assets/img/belgian_plants/resized/" ++ bird.id ++ ".jpg"
                , answer = bird.vernacularName
                , title = bird.license
                }
            )
            belgianPlantsData
        )


latinPlantsQuiz : Array.Array QuizQa
latinPlantsQuiz =
    Array.fromList
        (List.map
            (\bird ->
                { question = "/assets/img/belgian_plants/resized/" ++ bird.id ++ ".jpg"
                , answer = bird.binominalName
                , title = bird.license
                }
            )
            belgianPlantsData
        )


belgianPlantsData : List ImgQuizItem
belgianPlantsData =
    [ { vernacularName = "achillée millefeuille"
      , binominalName = "Achillea millefolium"
      , id = "bp101"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255484"
      }
    , { vernacularName = "aigremoine eupatoire"
      , binominalName = "Agrimonia eupatoria"
      , id = "bp102"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2077324"
      }
    , { vernacularName = "ail des ours"
      , binominalName = "Allium ursinum"
      , id = "bp103"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=2700416"
      }
    , { vernacularName = "alchémille vert jaunâtre"
      , binominalName = "Alchemilla xanthochlora"
      , id = "bp104"
      , license = "Par H. Zell — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8969769"
      }
    , { vernacularName = "alliaire officinale"
      , binominalName = "Alliaria officinalis"
      , id = "bp105"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1635878"
      }
    , { vernacularName = "ancolie commune"
      , binominalName = "Aquilegia vulgaris"
      , id = "bp106"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2041344"
      }
    , { vernacularName = "anémone sylvie"
      , binominalName = "Anemone nemorosa"
      , id = "bp107"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=452712"
      }
    , { vernacularName = "angélique sauvage"
      , binominalName = "Angelica sylvestris"
      , id = "bp108"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8842"
      }
    , { vernacularName = "anthrisque"
      , binominalName = "Anthriscus sylvestris"
      , id = "bp109"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i>; Max Vogtherr; M. Gurke; — Public domain, https://commons.wikimedia.org/w/index.php?curid=255499"
      }
    , { vernacularName = "armoise commune"
      , binominalName = "Artemisia vulgaris"
      , id = "bp110"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=7569"
      }
    , { vernacularName = "aspérule odorante"
      , binominalName = "Galium odoratum"
      , id = "bp111"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1669679"
      }
    , { vernacularName = "balsamine de l'Himalaya"
      , binominalName = "Impatiens glandulifera"
      , id = "bp112"
      , license = "Par Jeantosti — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=4890454"
      }
    , { vernacularName = "balsamine des bois"
      , binominalName = "Impatiens noli-tangere"
      , id = "bp113"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=17920644"
      }
    , { vernacularName = "bardane (grande)"
      , binominalName = "Arctium lappa"
      , id = "bp114"
      , license = "Par Christian Fischer — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4470395"
      }
    , { vernacularName = "benoîte commune"
      , binominalName = "Geum urbanum"
      , id = "bp115"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=731962"
      }
    , { vernacularName = "berce commune"
      , binominalName = "Heracleum sphondylium"
      , id = "bp116"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8850"
      }
    , { vernacularName = "berce du Caucase"
      , binominalName = "Heracleum mantegazzianum"
      , id = "bp117"
      , license = "Par Meneerke bloem — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=33440796"
      }
    , { vernacularName = "bleuet des champs"
      , binominalName = "Centaurea cyanus"
      , id = "bp118"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936580"
      }
    , { vernacularName = "bouillon blanc"
      , binominalName = "Verbascum thapsus"
      , id = "bp119"
      , license = "Par Jan Kops — Public domain, https://commons.wikimedia.org/w/index.php?curid=9021420"
      }
    , { vernacularName = "bourse-à-pasteur"
      , binominalName = "Capsella bursa-pastoris"
      , id = "bp120"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=200875"
      }
    , { vernacularName = "brunelle commune"
      , binominalName = "Prunella vulgaris"
      , id = "bp121"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27062399"
      }
    , { vernacularName = "bruyère commune"
      , binominalName = "Calluna vulgaris"
      , id = "bp122"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9572"
      }
    , { vernacularName = "buddléa"
      , binominalName = "Buddleja davidii"
      , id = "bp123"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1642094"
      }
    , { vernacularName = "bugle rampante"
      , binominalName = "Ajuga reptans"
      , id = "bp124"
      , license = "Par Patrice78500 — Public domain, https://commons.wikimedia.org/w/index.php?curid=7058235"
      }
    , { vernacularName = "cabaret des oiseaux"
      , binominalName = "Dipsacus fullonum"
      , id = "bp125"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8885"
      }
    , { vernacularName = "caille-lait blanc"
      , binominalName = "Galium mollugo"
      , id = "bp126"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=7356"
      }
    , { vernacularName = "campanule à feuilles rondes"
      , binominalName = "Campanula rotundifolia"
      , id = "bp127"
      , license = "Par Hans Hillewaert — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4750293"
      }
    , { vernacularName = "cardamine des prés"
      , binominalName = "Cardamine pratensis"
      , id = "bp128"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8626"
      }
    , { vernacularName = "carotte sauvage"
      , binominalName = "Daucus carota"
      , id = "bp129"
      , license = "Par Alvesgaspar — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4077304"
      }
    , { vernacularName = "chélidoine (grande)"
      , binominalName = "Chelidonium majus"
      , id = "bp130"
      , license = "Par Bff — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15509008"
      }
    , { vernacularName = "chicorée sauvage"
      , binominalName = "Cichorium intybus"
      , id = "bp131"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=200885"
      }
    , { vernacularName = "circée de Paris"
      , binominalName = "Circaea lutetiana"
      , id = "bp132"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=256432"
      }
    , { vernacularName = "cirse des champs"
      , binominalName = "Cirsium arvense"
      , id = "bp133"
      , license = "Par Richard Bartz — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=2619189"
      }
    , { vernacularName = "colchique "
      , binominalName = "Colchicum autumnale"
      , id = "bp134"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255312"
      }
    , { vernacularName = "compagnon blanc"
      , binominalName = "Silene latifolia"
      , id = "bp135"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=761411"
      }
    , { vernacularName = "compagnon rouge"
      , binominalName = "Silene dioica"
      , id = "bp136"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=761444"
      }
    , { vernacularName = "consoude (grande)"
      , binominalName = "Symphytum officinale"
      , id = "bp137"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8714"
      }
    , { vernacularName = "coquelicot (grand)"
      , binominalName = "Papaver rhoeas"
      , id = "bp138"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255420"
      }
    , { vernacularName = "cymbalaire"
      , binominalName = "Cymbalaria muralis"
      , id = "bp139"
      , license = "Par Alois Staudacher — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=32533481"
      }
    , { vernacularName = "digitale jaune"
      , binominalName = "Digitalis lutea"
      , id = "bp140"
      , license = "Par Bernd Haynold — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=220606"
      }
    , { vernacularName = "digitale pourpre"
      , binominalName = "Digitalis purpurea"
      , id = "bp141"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=1815791"
      }
    , { vernacularName = "épervière piloselle"
      , binominalName = "Hieracium pilosella"
      , id = "bp142"
      , license = "Par Prazak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=867298"
      }
    , { vernacularName = "épiaire des bois"
      , binominalName = "Stachys sylvatica"
      , id = "bp143"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26893216"
      }
    , { vernacularName = "épilobe en épi"
      , binominalName = "Epilobium angustifolium"
      , id = "bp144"
      , license = "Par Wknight94 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8769905"
      }
    , { vernacularName = "épilobe hirsute"
      , binominalName = "Epilobium hirsutum"
      , id = "bp145"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2263428"
      }
    , { vernacularName = "eupatoire chanvrine"
      , binominalName = "Eupatorium cannabinum"
      , id = "bp146"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=385679"
      }
    , { vernacularName = "euphorbe des bois"
      , binominalName = "Euphorbia amygdaloides"
      , id = "bp147"
      , license = "Par Rasbak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=134662"
      }
    , { vernacularName = "euphorbe réveil-matin"
      , binominalName = "Euphorbia helioscopia"
      , id = "bp148"
      , license = "Par Júlio Reis — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=804337"
      }
    , { vernacularName = "ficaire"
      , binominalName = "Ranunculus ficaria"
      , id = "bp149"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=185660"
      }
    , { vernacularName = "fraisier des bois"
      , binominalName = "Fragaria vesca"
      , id = "bp150"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9172"
      }
    , { vernacularName = "framboisier"
      , binominalName = "Rubus idaeus"
      , id = "bp151"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255451"
      }
    , { vernacularName = "gaillet croisette"
      , binominalName = "Cruciata laevipes"
      , id = "bp152"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=132153"
      }
    , { vernacularName = "gaillet gratteron"
      , binominalName = "Galium aparine"
      , id = "bp153"
      , license = "Par Prof. Dr. Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=8716633"
      }
    , { vernacularName = "galéopsis tétrahit"
      , binominalName = "Galeopsis tetrahit"
      , id = "bp154"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27544332"
      }
    , { vernacularName = "genêt à balais"
      , binominalName = "Cytisus scoparius"
      , id = "bp155"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255542"
      }
    , { vernacularName = "germandrée scorodoine"
      , binominalName = "Teucrium scorodonia"
      , id = "bp156"
      , license = "Par Aroche — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1089243"
      }
    , { vernacularName = "gesse des prés"
      , binominalName = "Lathyrus pratensis"
      , id = "bp157"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=744823"
      }
    , { vernacularName = "gouet tacheté"
      , binominalName = "Arum maculatum"
      , id = "bp158"
      , license = "Par Prof. Dr. Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=4072077"
      }
    , { vernacularName = "grande marguerite"
      , binominalName = "Leucanthemum vulgare"
      , id = "bp159"
      , license = "Par Magnus Manske — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2207618"
      }
    , { vernacularName = "grande pervenche"
      , binominalName = "Vinca major"
      , id = "bp160"
      , license = "Par JJ Harrison — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7597111"
      }
    , { vernacularName = "gratteron"
      , binominalName = "Galium aparine"
      , id = "bp161"
      , license = "Par Prof. Dr. Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=8716633"
      }
    , { vernacularName = "gui"
      , binominalName = "Viscum album"
      , id = "bp162"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=255641"
      }
    , { vernacularName = "herbe à Robert"
      , binominalName = "Geranium robertianum"
      , id = "bp163"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26893210"
      }
    , { vernacularName = "houblon"
      , binominalName = "Humulus lupulus"
      , id = "bp164"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255347"
      }
    , { vernacularName = "iris jaune"
      , binominalName = "Iris pseudacorus"
      , id = "bp165"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9103"
      }
    , { vernacularName = "jacinthe des bois"
      , binominalName = "Hyacinthoides non-scripta"
      , id = "bp166"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=736027"
      }
    , { vernacularName = "jonquille"
      , binominalName = "Narcissus pseudonarcissus"
      , id = "bp167"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=114664"
      }
    , { vernacularName = "laiteron rude"
      , binominalName = "Sonchus asper"
      , id = "bp168"
      , license = "Par Epipactis — CC0, https://commons.wikimedia.org/w/index.php?curid=15558153"
      }
    , { vernacularName = "lamier blanc"
      , binominalName = "Lamium album"
      , id = "bp169"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=737767"
      }
    , { vernacularName = "lamier jaune"
      , binominalName = "Lamium galeobdolon"
      , id = "bp170"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=737768"
      }
    , { vernacularName = "lamier pourpre"
      , binominalName = "Lamium purpureum"
      , id = "bp171"
      , license = "CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1862472"
      }
    , { vernacularName = "lierre (grimpant)"
      , binominalName = "Hedera helix"
      , id = "bp172"
      , license = "Par kenraiz — Public domain, https://commons.wikimedia.org/w/index.php?curid=5197146"
      }
    , { vernacularName = "lierre terrestre"
      , binominalName = "Glechoma hederacea"
      , id = "bp173"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=5966432"
      }
    , { vernacularName = "linaire commune"
      , binominalName = "Linaria vulgaris"
      , id = "bp174"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2085760"
      }
    , { vernacularName = "liseron des champs"
      , binominalName = "Convolvulus arvensis"
      , id = "bp175"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8620"
      }
    , { vernacularName = "liseron des haies"
      , binominalName = "Calystegia sepium"
      , id = "bp176"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27062397"
      }
    , { vernacularName = "lotier corniculé"
      , binominalName = "Lotus corniculatus"
      , id = "bp177"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=452716"
      }
    , { vernacularName = "luzerne cultivée"
      , binominalName = "Medicago sativa"
      , id = "bp178"
      , license = "Par Prof. Dr. Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=4068959"
      }
    , { vernacularName = "luzerne lupuline"
      , binominalName = "Medicago lupulina"
      , id = "bp179"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=145010"
      }
    , { vernacularName = "lychnis fleur de coucou"
      , binominalName = "Lychnis flos-cuculi"
      , id = "bp180"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8517"
      }
    , { vernacularName = "lysimaque nummulaire"
      , binominalName = "Lysimachia nummularia"
      , id = "bp181"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=17920639"
      }
    , { vernacularName = "marguerite (grande)"
      , binominalName = "Leucanthemum vulgare"
      , id = "bp182"
      , license = "Par Magnus Manske — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2207618"
      }
    , { vernacularName = "massette à larges feuilles"
      , binominalName = "Typha latifolia"
      , id = "bp183"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1609620"
      }
    , { vernacularName = "matricaire discoïde"
      , binominalName = "Matricaria discoidea"
      , id = "bp184"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27558952"
      }
    , { vernacularName = "mélampyre des prés"
      , binominalName = "Melampyrum pratense"
      , id = "bp185"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8771"
      }
    , { vernacularName = "mélilot officinal"
      , binominalName = "Melilotus officinalis"
      , id = "bp186"
      , license = "Par Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=1412291"
      }
    , { vernacularName = "mercuriale vivace"
      , binominalName = "Mercurialis perennis"
      , id = "bp187"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9332"
      }
    , { vernacularName = "millepertuis perforé"
      , binominalName = "Hypericum perforatum"
      , id = "bp188"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1669636"
      }
    , { vernacularName = "mouron rouge"
      , binominalName = "Anagallis arvensis"
      , id = "bp189"
      , license = "Par O. Pichard — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6235614"
      }
    , { vernacularName = "muguet"
      , binominalName = "Convallaria majalis"
      , id = "bp190"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255313"
      }
    , { vernacularName = "myrtille"
      , binominalName = "Vaccinium myrtillus"
      , id = "bp191"
      , license = "Par Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=9578"
      }
    , { vernacularName = "nénuphar blanc"
      , binominalName = "Nymphaea alba"
      , id = "bp192"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=458959"
      }
    , { vernacularName = "nénuphar jaune"
      , binominalName = "Nuphar lutea"
      , id = "bp193"
      , license = "Par Hans Hillewaert — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6813532"
      }
    , { vernacularName = "onagre bisannuelle"
      , binominalName = "Oenothera biennis"
      , id = "bp194"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2081914"
      }
    , { vernacularName = "orpin âcre"
      , binominalName = "Sedum acre"
      , id = "bp195"
      , license = "Par Wilson44691 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15900831"
      }
    , { vernacularName = "orpin blanc"
      , binominalName = "Sedum album"
      , id = "bp196"
      , license = "Par Bouba — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2535890"
      }
    , { vernacularName = "ortie dioïque"
      , binominalName = "Urtica dioica"
      , id = "bp197"
      , license = "Par User:Kilom691 — Public domain, https://commons.wikimedia.org/w/index.php?curid=2120727"
      }
    , { vernacularName = "oseille sauvage"
      , binominalName = "Rumex acetosa"
      , id = "bp198"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=5979117"
      }
    , { vernacularName = "oxalis petite oseille"
      , binominalName = "Oxalis acetosella"
      , id = "bp199"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=455542"
      }
    , { vernacularName = "pâquerette "
      , binominalName = "Bellis perennis"
      , id = "bp200"
      , license = "Par Jacob Sturm — Public domain, https://commons.wikimedia.org/w/index.php?curid=720792"
      }
    , { vernacularName = "parisette"
      , binominalName = "Paris quadrifolia"
      , id = "bp201"
      , license = "Par Frédéric — Public domain, https://commons.wikimedia.org/w/index.php?curid=3685596"
      }
    , { vernacularName = "pas d'âne"
      , binominalName = "Tussilago farfara"
      , id = "bp202"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255476"
      }
    , { vernacularName = "pensée des champs"
      , binominalName = "Viola arvensis"
      , id = "bp203"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=17920581"
      }
    , { vernacularName = "pensée sauvage"
      , binominalName = "Viola tricolor"
      , id = "bp204"
      , license = "Par Walther Otto Müller — Public domain, https://commons.wikimedia.org/w/index.php?curid=255640"
      }
    , { vernacularName = "perce-neige"
      , binominalName = "Galanthus nivalis"
      , id = "bp205"
      , license = "Par Tocekas — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=3728295"
      }
    , { vernacularName = "petite pervenche"
      , binominalName = "Vinca minor"
      , id = "bp206"
      , license = "Par Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=8606"
      }
    , { vernacularName = "phragmite"
      , binominalName = "Phragmites australis"
      , id = "bp207"
      , license = "Par Le.Loup.Gris — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16682936"
      }
    , { vernacularName = "plantain à larges feuilles"
      , binominalName = "Plantago major"
      , id = "bp208"
      , license = "Par Original book source: Prof. Dr. Otto Wilhelm Thomé <i>Flora von Deutschland, Österreich und der Schweiz</i> 1885, Gera, Germany — Public domain, https://commons.wikimedia.org/w/index.php?curid=2818720"
      }
    , { vernacularName = "plantain lancéolé"
      , binominalName = "Plantago lanceolata"
      , id = "bp209"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=744926"
      }
    , { vernacularName = "populage"
      , binominalName = "Caltha palustris"
      , id = "bp210"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2266258"
      }
    , { vernacularName = "potentille ansérine"
      , binominalName = "Potentilla anserina"
      , id = "bp211"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9184"
      }
    , { vernacularName = "potentille rampante"
      , binominalName = "Potentilla reptans"
      , id = "bp212"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9152"
      }
    , { vernacularName = "prêle des champs"
      , binominalName = "Equisetum arvense"
      , id = "bp213"
      , license = "Par Walter Siegmund — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8726511"
      }
    , { vernacularName = "primevère élevée"
      , binominalName = "Primula elatior"
      , id = "bp214"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1665745"
      }
    , { vernacularName = "primevère officinale"
      , binominalName = "Primula veris"
      , id = "bp215"
      , license = "Par Prof. Dr. Otto Wilhelm Thomé — Public domain, https://commons.wikimedia.org/w/index.php?curid=4062847"
      }
    , { vernacularName = "pulmonaire officinale"
      , binominalName = "Pulmonaria officinalis"
      , id = "bp216"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=8715"
      }
    , { vernacularName = "reine-des-prés"
      , binominalName = "Filipendula ulmaria"
      , id = "bp217"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27165314"
      }
    , { vernacularName = "renoncule âcre"
      , binominalName = "Ranunculus acris"
      , id = "bp218"
      , license = "Par Original book source:\n<p>Prof. Dr. Otto Wilhelm Thomé <i>Flora von Deutschland, Österreich und der Schweiz</i>\n</p>\n1885, Gera, Germany — Public domain, https://commons.wikimedia.org/w/index.php?curid=3477298"
      }
    , { vernacularName = "renoncule rampante"
      , binominalName = "Ranunculus repens"
      , id = "bp219"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=449763"
      }
    , { vernacularName = "renouée du Japon"
      , binominalName = "Fallopia japonica"
      , id = "bp220"
      , license = "Par Pixeltoo — Public domain, https://commons.wikimedia.org/w/index.php?curid=8162716"
      }
    , { vernacularName = "renouée persicaire"
      , binominalName = "Persicaria maculosa"
      , id = "bp221"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=249988"
      }
    , { vernacularName = "rosier des chiens"
      , binominalName = "Rosa canina"
      , id = "bp222"
      , license = "Par Amédée Masclef — Public domain, https://commons.wikimedia.org/w/index.php?curid=5771133"
      }
    , { vernacularName = "rossolis à feuilles rondes"
      , binominalName = "Drosera rotundifolia"
      , id = "bp223"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=108185"
      }
    , { vernacularName = "salicaire commune"
      , binominalName = "Lythrum salicaria"
      , id = "bp224"
      , license = "Par H. Zell — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10643490"
      }
    , { vernacularName = "salsifis des prés"
      , binominalName = "Tragopogon pratensis"
      , id = "bp225"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=175049"
      }
    , { vernacularName = "sceau-de-Salomon multiflore"
      , binominalName = "Polygonatum multiflorum"
      , id = "bp226"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=883011"
      }
    , { vernacularName = "scrofulaire noueuse"
      , binominalName = "Scrophularia nodosa"
      , id = "bp227"
      , license = "Par Original book source: Prof. Dr. Otto Wilhelm Thomé <i>Flora von Deutschland, Österreich und der Schweiz</i> 1885, Gera, Germany — Public domain, https://commons.wikimedia.org/w/index.php?curid=7047122"
      }
    , { vernacularName = "séneçon commun"
      , binominalName = "Senecio vulgaris"
      , id = "bp228"
      , license = "Par H. Zell — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11097718"
      }
    , { vernacularName = "séneçon jacobée"
      , binominalName = "Senecio jacobaea"
      , id = "bp229"
      , license = "Par Christian Fischer — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2471811"
      }
    , { vernacularName = "stellaire holostée"
      , binominalName = "Stellaria holostea"
      , id = "bp230"
      , license = "Par Nova — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=523205"
      }
    , { vernacularName = "stellaire intermédiaire"
      , binominalName = "Stellaria media"
      , id = "bp231"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936668"
      }
    , { vernacularName = "succise des prés"
      , binominalName = "Succisa pratensis"
      , id = "bp232"
      , license = "Par Ivar Leidus — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61619621"
      }
    , { vernacularName = "tabouret des champs"
      , binominalName = "Thlaspi arvense"
      , id = "bp233"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=505898"
      }
    , { vernacularName = "tanaisie commune"
      , binominalName = "Tanacetum vulgare"
      , id = "bp234"
      , license = "Par Ivar Leidus — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27509982"
      }
    , { vernacularName = "trèfle des prés"
      , binominalName = "Trifolium pratense"
      , id = "bp235"
      , license = "CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=449768"
      }
    , { vernacularName = "trèfle rampant"
      , binominalName = "Trifolium repens"
      , id = "bp236"
      , license = "Public domain, https://commons.wikimedia.org/w/index.php?curid=9274"
      }
    , { vernacularName = "valériane officinale"
      , binominalName = "Valeriana repens"
      , id = "bp237"
      , license = "Par Franz Eugen Köhler, <i>Köhler's Medizinal-Pflanzen</i> — Public domain, https://commons.wikimedia.org/w/index.php?curid=255477"
      }
    , { vernacularName = "véronique de Perse"
      , binominalName = "Veronica persica"
      , id = "bp238"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=780041"
      }
    , { vernacularName = "véronique petit-chêne"
      , binominalName = "Veronica chamaedrys"
      , id = "bp239"
      , license = "Par Roby — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=20455242"
      }
    , { vernacularName = "vesce à épis"
      , binominalName = "Vicia cracca"
      , id = "bp240"
      , license = "Par Johann Georg Sturm (Painter: Jacob Sturm) — Public domain, https://commons.wikimedia.org/w/index.php?curid=787489"
      }
    , { vernacularName = "vesce des haies"
      , binominalName = "Vicia sepium"
      , id = "bp241"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2232832"
      }
    , { vernacularName = "vipérine commune"
      , binominalName = "Echium vulgare"
      , id = "bp242"
      , license = "Par Carl Axel Magnus Lindman — Public domain, https://commons.wikimedia.org/w/index.php?curid=936454"
      }
    ]
