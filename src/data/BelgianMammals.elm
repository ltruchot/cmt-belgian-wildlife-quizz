module BelgianMammals exposing (belgianMammalsOptions, belgianMammalsQuiz, latinMammalsQuiz)

import Array exposing (Array)
import Quiz exposing (GameOverMsgs, ImgQuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)


mammalsGameOverMsgs : GameOverMsgs
mammalsGameOverMsgs =
    { sad =
        "Oh non ! Tu as fait pleurer le petit renard avec ce mauvais score..."
    , neutral =
        "Ton score moyen laisse ce sanglier plutôt indifférent..."
    , happy =
        "Merci, tu as rendu un renard heureux avec ce joli score..."
    , proud =
        "Parfait ! Le cerf majestueux rend hommage ta sagesse..."
    }


belgianMammalsOptions : QuizOptions
belgianMammalsOptions =
    { prefix = "bm"
    , folder = "belgian_mammals"
    , gameOverMsgs = mammalsGameOverMsgs
    }


belgianMammalsQuiz : Array QuizQa
belgianMammalsQuiz =
    getImgWildlifeQuiz belgianMammalsData Vernacular belgianMammalsOptions


latinMammalsQuiz : Array QuizQa
latinMammalsQuiz =
    getImgWildlifeQuiz belgianMammalsData Binominal belgianMammalsOptions


belgianMammalsData : List ImgQuizItem
belgianMammalsData =
    [ { vernacularName = "Chat sylvestre"
      , binominalName = "Felis sylvestris"
      , id = "219"
      , license = "Par Lviatour — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=24703445"
      }
    , { vernacularName = "Lynx boréal"
      , binominalName = "Lynx lynx"
      , id = "220"
      , license = "Par mpiet — CC BY-SA 2.0 de, https://commons.wikimedia.org/w/index.php?curid=453440"
      }
    , { vernacularName = "Renard roux"
      , binominalName = "Vulpes vulpes"
      , id = "221"
      , license = "Par Peter Trimming — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=19027852"
      }
    , { vernacularName = "Blaireau"
      , binominalName = "Meles meles"
      , id = "222"
      , license = "Par Peter Trimming — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=17199217"
      }
    , { vernacularName = "Martre"
      , binominalName = "Martes martes"
      , id = "223"
      , license = "Par Édouard Hue — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=37059724"
      }
    , { vernacularName = "Fouine"
      , binominalName = "Martes foina"
      , id = "224"
      , license = "Par Steinmarder_01.jpg — CC BY 2.0 de, https://commons.wikimedia.org/w/index.php?curid=15635960"
      }
    , { vernacularName = "Hermine"
      , binominalName = "Mustela erminea"
      , id = "225"
      , license = "Par Steve Hillebrand, USFWS — Public domain, https://commons.wikimedia.org/w/index.php?curid=4658019"
      }
    , { vernacularName = "Belette"
      , binominalName = "Mustela nivalis"
      , id = "226"
      , license = "Par Keven Law — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=4580080"
      }
    , { vernacularName = "Putois"
      , binominalName = "Mustela putorius"
      , id = "227"
      , license = "Par Hemmer — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1619862"
      }
    , { vernacularName = "Loutre"
      , binominalName = "Lutra lutra"
      , id = "228"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=23468"
      }
    , { vernacularName = "Hérisson"
      , binominalName = "Erinaceus europaeus"
      , id = "229"
      , license = "Par Jörg Hempel — CC BY-SA 2.0 de, https://commons.wikimedia.org/w/index.php?curid=2911084"
      }
    , { vernacularName = "Taupe"
      , binominalName = "Talpa europaea"
      , id = "230"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=23203253"
      }
    , { vernacularName = "Sanglier"
      , binominalName = "Sus scrofa"
      , id = "231"
      , license = "Par A.Savin — FAL, https://commons.wikimedia.org/w/index.php?curid=65074239"
      }
    , { vernacularName = "Cerf européen"
      , binominalName = "Cervus elaphus"
      , id = "232"
      , license = "Par Lviatour — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16566391"
      }
    , { vernacularName = "Daim"
      , binominalName = "Dama dama"
      , id = "233"
      , license = "Par Johann-Nikolaus Andreae — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=46563187"
      }
    , { vernacularName = "Chevreuil"
      , binominalName = "Capreolus capreolus"
      , id = "234"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=112551"
      }
    , { vernacularName = "Mouflon"
      , binominalName = "Ovis ammon"
      , id = "235"
      , license = "Par Momotarou2012 — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=26274659"
      }
    , { vernacularName = "Écureuil roux"
      , binominalName = "Sciurus vulgaris"
      , id = "236"
      , license = "Par Ray eye — CC BY-SA 2.0 de, https://commons.wikimedia.org/w/index.php?curid=2192065"
      }
    , { vernacularName = "Loir"
      , binominalName = "Glis glis"
      , id = "237"
      , license = "Par Bertille de Fombelle — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27438670"
      }
    , { vernacularName = "Muscardin"
      , binominalName = "Muscardinus avellanarius"
      , id = "238"
      , license = "Par Björn Schulz — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=1221362"
      }
    , { vernacularName = "Lérot"
      , binominalName = "Eliomys quercinus"
      , id = "239"
      , license = "Par Jctramasure — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10402796"
      }
    , { vernacularName = "Castor d'Europe"
      , binominalName = "Castor fiber"
      , id = "240"
      , license = "Par Per Harald Olsen — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=944464"
      }
    , { vernacularName = "Rat surmulot"
      , binominalName = "Rattus norvegicus"
      , id = "241"
      , license = "Par Reg Mckenna — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=3875126"
      }
    , { vernacularName = "Rat noir"
      , binominalName = "Rattus rattus"
      , id = "242"
      , license = "Par Liftarn — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=138395"
      }
    , { vernacularName = "Souris grise"
      , binominalName = "Mus domesticus"
      , id = "243"
      , license = "Par <span lang=\"fr\">Inconnu</span> — Public domain, https://commons.wikimedia.org/w/index.php?curid=28335"
      }
    , { vernacularName = "Rat des moissons"
      , binominalName = "Micromys minutus"
      , id = "244"
      , license = "Par Hecke — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=779022"
      }
    , { vernacularName = "Hamster"
      , binominalName = "Cricetus cricetus"
      , id = "245"
      , license = "Par Agnieszka Szeląg — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=27796341"
      }
    , { vernacularName = "Campagnol roussâtre"
      , binominalName = "Clethrionomys glareolus"
      , id = "246"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=269464"
      }
    , { vernacularName = "Rat musqué"
      , binominalName = "Ondatra zibethicus"
      , id = "247"
      , license = "Par David Menke — Public domain, https://commons.wikimedia.org/w/index.php?curid=357863"
      }
    , { vernacularName = "Lapin de garenne"
      , binominalName = "Oryctolagus cuniculus"
      , id = "248"
      , license = "Par JJ Harrison — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=8283824"
      }
    , { vernacularName = "Tamia de Sibérie"
      , binominalName = "Eutamias sibiricus"
      , id = "249"
      , license = "Par AndiW — Public domain, https://commons.wikimedia.org/w/index.php?curid=49109"
      }
    , { vernacularName = "Ragondin"
      , binominalName = "Myocastor coypus"
      , id = "250"
      , license = "Par Norbert Nagel — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=23360757"
      }
    , { vernacularName = "Lièvre d'Europe"
      , binominalName = "Lepus europaeus"
      , id = "251"
      , license = "Par Jean-Jacques Boujot — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=37547558"
      }
    ]
