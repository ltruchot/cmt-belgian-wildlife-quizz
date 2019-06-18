module BelgianMushrooms exposing (belgianMushroomsQuiz, binominalMushroomsQuiz)

import Array exposing (Array)
import Quiz exposing (DisplayableQuiz, GameOverMsgs, ImgQuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)


belgianMushroomsQuiz : DisplayableQuiz
belgianMushroomsQuiz =
    { qas = getImgWildlifeQuiz data Vernacular options
    , options = options
    , uniqName = "BelgianMushrooms"
    , visibleName = "Mycologie"
    }


binominalMushroomsQuiz : DisplayableQuiz
binominalMushroomsQuiz =
    { qas = getImgWildlifeQuiz data Binominal options
    , options = options
    , uniqName = "BinominalMushrooms"
    , visibleName = "Champignons (binominal)"
    }


options : QuizOptions
options =
    { prefix = "bmu"
    , folder = "belgian_mushrooms"
    , gameOverMsgs = gameOverMsgs
    }


gameOverMsgs : GameOverMsgs
gameOverMsgs =
    { sad =
        "Oh non ! Tu es un danger public, il va falloir réviser !"
    , neutral =
        "Pas mal. Mais il te reste plusieurs étapes avant de savoir cuisiner une bonne omelette."
    , happy =
        "Bravo. Tu as bien mérité ce bouquet de champignons variés."
    , proud =
        "Parfait ! Tu as ta place dans le monde délicat des champignons."
    }


data : List ImgQuizItem
data =
    [ { vernacularName = "agarics"
      , binominalName = "Agaricus campestris"
      , id = "121"
      , license = "Par Unknown artist — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1710232"
      }
    , { vernacularName = "amanite citrine"
      , binominalName = "Amanita citrina"
      , id = "122"
      , license = "Par Bernypisa — Public domain, https://commons.wikimedia.org/w/index.php?curid=1144171"
      }
    , { vernacularName = "amanite panthère"
      , binominalName = "Amanita pantherina"
      , id = "123"
      , license = "Par George Chernilevsky — Public domain, https://commons.wikimedia.org/w/index.php?curid=26556137"
      }
    , { vernacularName = "amanite phalloïde"
      , binominalName = "Amanita phalloides"
      , id = "124"
      , license = "Par Archenzo — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=329999"
      }
    , { vernacularName = "amanite rougissante"
      , binominalName = "Amanita rubescens"
      , id = "125"
      , license = "Par Andreas Kunze — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15954511"
      }
    , { vernacularName = "amanite tue-mouches"
      , binominalName = "Amanita muscaria"
      , id = "126"
      , license = "Par H. Krisp — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=35657774"
      }
    , { vernacularName = "armillaires"
      , binominalName = "Armillaria mellea"
      , id = "127"
      , license = "Par Stu's Images — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=17599821"
      }
    , { vernacularName = "bolets"
      , binominalName = "Boletus edulis"
      , id = "128"
      , license = "Par Wawnelid — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16591742"
      }
    , { vernacularName = "calocère visqueuse"
      , binominalName = "Calocera viscosa"
      , id = "129"
      , license = "https://commons.wikimedia.org/w/index.php?curid=11324234"
      }
    , { vernacularName = "chanterelle"
      , binominalName = "Cantharellus cibarius"
      , id = "130"
      , license = "Par Jeffdelonge — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1651493"
      }
    , { vernacularName = "chanterelle en tube"
      , binominalName = "Cantharellus tubaeformis"
      , id = "131"
      , license = "Par Craterellus_tubaeformis_1345904803_69350246bb_o.jpg — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=12754510"
      }
    , { vernacularName = "chlorosplénie bleuâtre"
      , binominalName = "Chlorociboria aeruginascens"
      , id = "132"
      , license = "Par Jason Hollinger — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=22382508"
      }
    , { vernacularName = "clavaires"
      , binominalName = "Clavaria rosea"
      , id = "133"
      , license = "Par Andrew Parker (mycotrope) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15626762"
      }
    , { vernacularName = "clitocybes"
      , binominalName = "Clitocybe odora"
      , id = "134"
      , license = "Par J.Marqua — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=479746"
      }
    , { vernacularName = "clitocybe nébuleux"
      , binominalName = "Clitocybe nebularis"
      , id = "135"
      , license = "Par Archenzo — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=5266036"
      }
    , { vernacularName = "clitopile petite prune"
      , binominalName = "Clitopilus prunulus"
      , id = "136"
      , license = "Par Strobilomyces — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=28878605"
      }
    , { vernacularName = "collybies"
      , binominalName = "Gymnopus fusipes"
      , id = "137"
      , license = "Par User:Strobilomyces — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=192879"
      }
    , { vernacularName = "collybie beurrée"
      , binominalName = "Rhodocollybia butyracea"
      , id = "138"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=486365"
      }
    , { vernacularName = "coprins"
      , binominalName = "Coprinellus disseminatus"
      , id = "139"
      , license = "Par B59210 — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=62816647"
      }
    , { vernacularName = "coprin chevelu"
      , binominalName = "Coprinus comatus"
      , id = "140"
      , license = "Par User:Nino Barbieri — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1681533"
      }
    , { vernacularName = "coprin micacé"
      , binominalName = "Coprinellus micaceus"
      , id = "141"
      , license = "Par Jean-Jacques MILAN — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=695628"
      }
    , { vernacularName = "coprin noir d'encre"
      , binominalName = "Coprinus atramentarius"
      , id = "142"
      , license = "Par James Lindsey — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=3565706"
      }
    , { vernacularName = "cortinaires"
      , binominalName = "Cortinarius purpurascens"
      , id = "143"
      , license = "Par Irene Andersson (irenea) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10940286"
      }
    , { vernacularName = "crépidotes"
      , binominalName = "Cortinarius orellanus"
      , id = "144"
      , license = "Par Archenzo — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=333209"
      }
    , { vernacularName = "croûtes"
      , binominalName = "Inonotus obliquus"
      , id = "145"
      , license = "Par Tocekas — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7579174"
      }
    , { vernacularName = "entolomes"
      , binominalName = "Entoloma sinuatum"
      , id = "146"
      , license = "Par Jean-Louis Lascoux — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1962987"
      }
    , { vernacularName = "fausse chanterelle"
      , binominalName = "Hygrophoropsis aurantiaca"
      , id = "147"
      , license = "Par W.J.Pilsak — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=167766"
      }
    , { vernacularName = "géastres"
      , binominalName = "Geastrum triplex"
      , id = "148"
      , license = "Par amadej trnkoczy (amadej) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9426369"
      }
    , { vernacularName = "gomphides"
      , binominalName = "Gomphidius roseus"
      , id = "149"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=167761"
      }
    , { vernacularName = "gymnopiles"
      , binominalName = "Gymnopilus penetrans"
      , id = "150"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=217693"
      }
    , { vernacularName = "hébélomes"
      , binominalName = "Hebeloma crustuliniforme"
      , id = "151"
      , license = "Par User:Strobilomyces — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1318132"
      }
    , { vernacularName = "helvelles"
      , binominalName = "Helvella acetabulum"
      , id = "152"
      , license = "Par Gerhard Koller (Gerhard) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11123183"
      }
    , { vernacularName = "helvelle crépue"
      , binominalName = "Helvella crispa"
      , id = "153"
      , license = "Par Nathan Wilson — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=6640931"
      }
    , { vernacularName = "hygrocybes"
      , binominalName = "Hygrocybe coccinea"
      , id = "154"
      , license = "Par Jplm — CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1367308"
      }
    , { vernacularName = "hygrophores"
      , binominalName = "Hygrophorus agathosmus"
      , id = "155"
      , license = "Par Ryane Snow (snowman) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9060612"
      }
    , { vernacularName = "hypholome capnoïde"
      , binominalName = "Hypholoma capnoides"
      , id = "156"
      , license = "Par Madjack74 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2751716"
      }
    , { vernacularName = "hypholome couleur de brique"
      , binominalName = "Hypholoma sublateritium"
      , id = "157"
      , license = "Par Archenzo — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2997388"
      }
    , { vernacularName = "hypholome en touffe"
      , binominalName = "Hypholoma fasciculare"
      , id = "158"
      , license = "Par Saharadesertfox — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=310731"
      }
    , { vernacularName = "inocybes"
      , binominalName = "Inocybe rimosa"
      , id = "159"
      , license = "Par Eric Steinert — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=353499"
      }
    , { vernacularName = "laccaire améthyste"
      , binominalName = "Laccaria amethystina"
      , id = "160"
      , license = "Par H. Krisp — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=16856622"
      }
    , { vernacularName = "laccaire laqué"
      , binominalName = "Laccaria laccata"
      , id = "161"
      , license = "Par Luridiformis — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=16215385"
      }
    , { vernacularName = "lactaires"
      , binominalName = "Lactarius vellereus"
      , id = "162"
      , license = "Par Jean-Pol GRANDMONT — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3211293"
      }
    , { vernacularName = "lépiotes"
      , binominalName = "Macrolepiota procera"
      , id = "163"
      , license = "Par Chrumps — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=35593334"
      }
    , { vernacularName = "lycoperdons"
      , binominalName = "Lycoperdon pyriforme"
      , id = "164"
      , license = "Par Teuch67 — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=47164355"
      }
    , { vernacularName = "lycoperdon perlé"
      , binominalName = "Lycoperdon perlatum"
      , id = "165"
      , license = "Par H. Krisp — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=16830686"
      }
    , { vernacularName = "marasmes"
      , binominalName = "Marasmius oreades"
      , id = "166"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=875758"
      }
    , { vernacularName = "morilles"
      , binominalName = "Morchella esculenta"
      , id = "167"
      , license = "Par J.Marqua — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=479828"
      }
    , { vernacularName = "mycènes"
      , binominalName = "Mycena aurantiomarginata"
      , id = "168"
      , license = "Par Alan Rockefeller — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=23496108"
      }
    , { vernacularName = "oreille-de-Judas"
      , binominalName = "Auricularia auricula-judae"
      , id = "169"
      , license = "Par Jean-Pol GRANDMONT — CC BY 2.5, undefined"
      }
    , { vernacularName = "panéoles"
      , binominalName = "Panaeolus cyanescens"
      , id = "170"
      , license = "Par Prankster239 — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2849189"
      }
    , { vernacularName = "paxille enroulé"
      , binominalName = "Paxillus involutus"
      , id = "171"
      , license = "Par Strobilomyces — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=465732"
      }
    , { vernacularName = "pezizes"
      , binominalName = "Peziza repanda"
      , id = "172"
      , license = "Par Rosser1954 — Public domain, https://commons.wikimedia.org/w/index.php?curid=6681334"
      }
    , { vernacularName = "pezize écarlate"
      , binominalName = "Sarcoscypha coccinea"
      , id = "173"
      , license = "Par Ryane Snow (snowman) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9040405"
      }
    , { vernacularName = "pezize orangée"
      , binominalName = "Aleuria aurantia"
      , id = "174"
      , license = "Par 2011-11-15_Aleuria_aurantia_6364528013_1a6a132e3e_o.jpg — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=20143265"
      }
    , { vernacularName = "pholiote changeante"
      , binominalName = "Kuehneromyces mutabilis"
      , id = "175"
      , license = "Par James Lindsey — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=3566301"
      }
    , { vernacularName = "pholiote écailleuse"
      , binominalName = "Pholiota squarrosa"
      , id = "176"
      , license = "Par Jean-Pol GRANDMONT — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3402820"
      }
    , { vernacularName = "pied bleu"
      , binominalName = "Lepista nuda"
      , id = "177"
      , license = "Par Jörg Hempel — CC BY-SA 3.0 de, https://commons.wikimedia.org/w/index.php?curid=35937774"
      }
    , { vernacularName = "lépiste sordide"
      , binominalName = "Lepista sordida"
      , id = "178"
      , license = "Par Berylverte — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=17522578"
      }
    , { vernacularName = "pied de mouton"
      , binominalName = "Hydnum repandum"
      , id = "179"
      , license = "Par D J Kelly — Public domain, https://commons.wikimedia.org/w/index.php?curid=1328791"
      }
    , { vernacularName = "pleurotes"
      , binominalName = "Pleurotus dryinus"
      , id = "180"
      , license = "Par Jean-Pol GRANDMONT — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3284465"
      }
    , { vernacularName = "pleurote en huître"
      , binominalName = "Pleurotus ostreatus"
      , id = "181"
      , license = "Par voir ci-dessous / see below — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3330811"
      }
    , { vernacularName = "plutées"
      , binominalName = "Pluteus cervinus"
      , id = "182"
      , license = "Par Madjack74 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2875154"
      }
    , { vernacularName = "polypores"
      , binominalName = "Polyporus alveolaris"
      , id = "183"
      , license = "Par Andreas Kunze — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=14907727"
      }
    , { vernacularName = "polypore du bouleau"
      , binominalName = "Piptoporus betulinus"
      , id = "184"
      , license = "Par Jean-Pol GRANDMONT — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3254180"
      }
    , { vernacularName = "psathyrelles"
      , binominalName = "Psathyrella bipellis"
      , id = "185"
      , license = "Par Boleslaw Kuznik (Bolek) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=12748622"
      }
    , { vernacularName = "russules"
      , binominalName = "Russula emetica"
      , id = "186"
      , license = "Par MichalPL — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=63737437"
      }
    , { vernacularName = "satyre puant"
      , binominalName = "Phallus impudicus"
      , id = "187"
      , license = "Par Dohduhdah — Public domain, https://commons.wikimedia.org/w/index.php?curid=4863462"
      }
    , { vernacularName = "sclérodermes"
      , binominalName = "Scleroderma verrucosum"
      , id = "188"
      , license = "Par Pau Cabot — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1735413"
      }
    , { vernacularName = "scléroderme commun"
      , binominalName = "Scleroderma citrinum"
      , id = "189"
      , license = "Par <div class=\"fn value\">\nHans Hillewaert</div> — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=2668668"
      }
    , { vernacularName = "stérée hirsute"
      , binominalName = "Stereum hirsutum"
      , id = "190"
      , license = "Par Andreas Kunze — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=13259539"
      }
    , { vernacularName = "strophaires"
      , binominalName = "Stropharia pseudocyanea"
      , id = "191"
      , license = "Par Strobilomyces — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=17308797"
      }
    , { vernacularName = "strophaire vert-de-gris"
      , binominalName = "Stropharia aeruginosa"
      , id = "192"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=777801"
      }
    , { vernacularName = "trémelles"
      , binominalName = "Tremella aurantia"
      , id = "193"
      , license = "Par Tremella_mesenterica_040201A.jpg — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=12841592"
      }
    , { vernacularName = "trémelle mésentérique"
      , binominalName = "Tremella mesenterica"
      , id = "194"
      , license = "Par Jean-Pol GRANDMONT — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3220464"
      }
    , { vernacularName = "tricholomes"
      , binominalName = "Tricholoma myomyces"
      , id = "195"
      , license = "Par User:Strobilomyces — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1348945"
      }
    , { vernacularName = "tricholome rutilant"
      , binominalName = "Tricholomopsis rutilans"
      , id = "196"
      , license = "Par Alberto Vázquez — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=1393518"
      }
    , { vernacularName = "trompette de la mort"
      , binominalName = "Craterellus cornucopioides"
      , id = "197"
      , license = "Par Jean-Pol GRANDMONT — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=29154362"
      }
    , { vernacularName = "truffes"
      , binominalName = "Tuber melanosporum"
      , id = "198"
      , license = "Par moi-même — Public domain, https://commons.wikimedia.org/w/index.php?curid=1475134"
      }
    , { vernacularName = "volvaires"
      , binominalName = "Volvariella bombycina"
      , id = "199"
      , license = "Par Hagen Graebner — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10762346"
      }
    , { vernacularName = "xylaire du bois"
      , binominalName = "Xylaria hypoxylon"
      , id = "200"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=121630"
      }
    , { vernacularName = "xylaire polymorphe"
      , binominalName = "Xylaria polymorpha"
      , id = "201"
      , license = "Par Unknown artist — Attribution, https://commons.wikimedia.org/w/index.php?curid=1563550"
      }
    , { vernacularName = "cystodermes"
      , binominalName = "Cystoderma spp."
      , id = "202"
      , license = "Par James Lindsey at Ecology of Commanster — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=3565900"
      }
    , { vernacularName = "mélanoleucas"
      , binominalName = "Melanoleuca spp."
      , id = "203"
      , license = "Par Strobilomyces — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2164642"
      }
    ]