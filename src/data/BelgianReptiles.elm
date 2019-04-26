module BelgianReptiles exposing (belgianReptilesOptions, belgianReptilesQuiz, latinReptilesQuiz)

import Array exposing (Array)
import Quiz exposing (GameOverMsgs, ImgQuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)


reptilesGameOverMsgs : GameOverMsgs
reptilesGameOverMsgs =
    { sad =
        "Oh non ! Ton serpent se mord la queue... Tu devrais réviser un peu."
    , neutral =
        "Pas mal. Mais le caméléon reste un peu confus, il va falloir s'améliorer..."
    , happy =
        "Bravo ! Toute la mare est joyeuse grâce à toi !"
    , proud =
        "Parfait ! Tu fais la fierté du monde reptilien."
    }


belgianReptilesOptions : QuizOptions
belgianReptilesOptions =
    { prefix = "br"
    , folder = "belgian_reptiles"
    , gameOverMsgs = reptilesGameOverMsgs
    }


belgianReptilesQuiz : Array QuizQa
belgianReptilesQuiz =
    getImgWildlifeQuiz belgianReptilesData Vernacular belgianReptilesOptions


latinReptilesQuiz : Array QuizQa
latinReptilesQuiz =
    getImgWildlifeQuiz belgianReptilesData Binominal belgianReptilesOptions


belgianReptilesData : List ImgQuizItem
belgianReptilesData =
    [ { vernacularName = "alyte accoucheur"
      , binominalName = "Alytes obstetricans"
      , id = "101"
      , license = "Par Bernard DUPONT — CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=73305913"
      }
    , { vernacularName = "crapaud calamite"
      , binominalName = "Bufo calamita"
      , id = "102"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=109958"
      }
    , { vernacularName = "crapaud commun"
      , binominalName = "Bufo bufo"
      , id = "103"
      , license = "Par Iric — CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=852982"
      }
    , { vernacularName = "grenouille rousse"
      , binominalName = "Rana temporaria"
      , id = "104"
      , license = "Par H. Krisp — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=16316567"
      }
    , { vernacularName = "grenouille verte"
      , binominalName = "Rana esculenta"
      , id = "105"
      , license = "Par Grand-Duc — CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=8288286"
      }
    , { vernacularName = "rainette verte"
      , binominalName = "Hyla arborea"
      , id = "106"
      , license = "Par FelixReimann — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2148874"
      }
    , { vernacularName = "salamandre terrestre"
      , binominalName = "Salamandra salamandra"
      , id = "107"
      , license = "Par Didier Descouens — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=18182805"
      }
    , { vernacularName = "sonneur à ventre jaune"
      , binominalName = "Bombina variegata"
      , id = "108"
      , license = "Par Rosenzweig — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=2377174"
      }
    , { vernacularName = "triton alpestre"
      , binominalName = "Triturus alpestris"
      , id = "109"
      , license = "Par Joxerra Aihartza — FAL, https://commons.wikimedia.org/w/index.php?curid=11840993"
      }
    , { vernacularName = "triton crêté"
      , binominalName = "Triturus cristatus"
      , id = "110"
      , license = "Par Christian Fischer — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=316387"
      }
    , { vernacularName = "triton palmé"
      , binominalName = "Triturus helveticus"
      , id = "111"
      , license = "Par André Chatroux — FAL, https://commons.wikimedia.org/w/index.php?curid=2569302"
      }
    , { vernacularName = "triton ponctué"
      , binominalName = "Triturus vulgaris"
      , id = "112"
      , license = "Par Fritz Geller-Grimm — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9855461"
      }
    , { vernacularName = "coronelle lisse"
      , binominalName = "Coronella austriaca"
      , id = "113"
      , license = "Par Christian Fischer — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4668787"
      }
    , { vernacularName = "couleuvre à collier"
      , binominalName = "Natrix natrix"
      , id = "114"
      , license = "Par Lukas Jonaitis — CC BY 2.0, https://commons.wikimedia.org/w/index.php?curid=8399053"
      }
    , { vernacularName = "lézard des murailles"
      , binominalName = "Podarcis muralis"
      , id = "115"
      , license = "Par Lucarelli — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9878412"
      }
    , { vernacularName = "lézard des souches"
      , binominalName = "Lacerta agilis"
      , id = "116"
      , license = "Par böhringer friedrich — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=2655257"
      }
    , { vernacularName = "lézard vivipare"
      , binominalName = "Zootoca vivipara"
      , id = "117"
      , license = "Par <bdi>Charles J Sharp\n</bdi> — CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=57630280"
      }
    , { vernacularName = "orvet fragile"
      , binominalName = "Anguis fragilis"
      , id = "118"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=22209"
      }
    , { vernacularName = "vipère péliade"
      , binominalName = "Vipera berus"
      , id = "119"
      , license = "Par Unknown artist — CC-BY-SA-3.0, https://commons.wikimedia.org/w/index.php?curid=124032"
      }
    ]
