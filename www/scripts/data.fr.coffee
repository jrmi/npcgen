
# Import
domains = {}
Domain = window.Domain

domains.start = new Domain
domains.start.add 'Le personnage est {sex}'
                
domains.sex = new Domain
domains.sex.add 'une {type}femme {age} qui {physical_detail} et qui parle {oral_detail}', null, null, ['woman']
domains.sex.add 'un {type}homme {age} qui {physical_detail} et qui parle {oral_detail}', null, null, ['man']

domains.type = new Domain
domains.type.add ""
domains.type.add "nain ", null, ['fantasy']
domains.type.add "elfe ", null, ['fantasy']
domains.type.add "orc ", null, ['fantasy']
domains.type.add "troll ", null, ['fantasy']

domains.age = new Domain
domains.age.add 'agé', null, ['man']
domains.age.add 'agée', null, ['woman']
domains.age.add 'jeune' 
domains.age.add 'adulte', 3
    
domains.physical_detail = new Domain
# body
domains.physical_detail.add "est mince"
domains.physical_detail.add "est rachitique"
domains.physical_detail.add "a un gros bide"
domains.physical_detail.add "est très grand", null, ['man']
domains.physical_detail.add "est très musclé", null, ['man']
domains.physical_detail.add "est tout rond", null, ['man']
domains.physical_detail.add "est tout petit", null, ['man']
domains.physical_detail.add "est très grande", null, ['woman']
domains.physical_detail.add "est très musclée", null, ['woman']
domains.physical_detail.add "est toute ronde", null, ['woman']
domains.physical_detail.add "est toute petite", null, ['woman']
domains.physical_detail.add "est obèse"
domains.physical_detail.add "est vouté"
domains.physical_detail.add "est bossu"
domains.physical_detail.add "a la peau {skin_color}"

# Ears
domains.physical_detail.add "a de gros lobes d'oreille"
domains.physical_detail.add "n'a qu'une seule oreille"
domains.physical_detail.add "n'a pas de lobe d'oreille"
domains.physical_detail.add "a les oreilles décolées"
domains.physical_detail.add "a des boucles d'oreille"
domains.physical_detail.add "a les oreilles déformées"

# mouth
domains.physical_detail.add "a la bouche en cul de poule"
domains.physical_detail.add "a un bec de lièvre"
domains.physical_detail.add "a des dents parfaites"
domains.physical_detail.add "a des dents pointues"
domains.physical_detail.add "a des dents gatées"
domains.physical_detail.add "a des lèvres très fines"
domains.physical_detail.add "a de grosses lèvres"
domains.physical_detail.add "a des dents en métal"
domains.physical_detail.add "a des dents de lapin"
domains.physical_detail.add "a des dents de la chance"
domains.physical_detail.add "a des dents manquantes"
domains.physical_detail.add "n'a pas de dent"

# Arms
domains.physical_detail.add "a un bras manquant"
domains.physical_detail.add "a des mains énormes"
domains.physical_detail.add "a des tatouages sur les bras"
domains.physical_detail.add "a des tatouages sur les mains"
domains.physical_detail.add "a une main manquante"
domains.physical_detail.add "a des mains disproportionnées"

# Noze
domains.physical_detail.add "a le nez en trompette"
domains.physical_detail.add "a le nez cassé"
domains.physical_detail.add "a le nez pointu"
domains.physical_detail.add "a un nez de cochon"
domains.physical_detail.add "n'a pas de nez"
domains.physical_detail.add "a un piercing sur le nez"

# Eyes
domains.physical_detail.add "a les yeux verrons"
domains.physical_detail.add "porte des lunettes"
domains.physical_detail.add "a un oeuil en moins"
domains.physical_detail.add "a les yeux injectés de sang"
domains.physical_detail.add "a un oeuil sans pupille"
domains.physical_detail.add "a les yeux très maquillés", null, ['woman']
domains.physical_detail.add "a un strabisme"
domains.physical_detail.add "a les yeux globuleux"
domains.physical_detail.add "n'a pas de sourcils"


# Face
domains.physical_detail.add "a une longue barbe", null, ['man']
domains.physical_detail.add "a un percing au visage"
domains.physical_detail.add "a des favoris", null, ['man']
domains.physical_detail.add "a une moustache", null, ['man']
domains.physical_detail.add "est imberbe", null, ['man']
domains.physical_detail.add "est mal rasé", null, ['man']
domains.physical_detail.add "a un bouc", null, ['man']
domains.physical_detail.add "a des rubans dans sa barbe", null, ['man']
domains.physical_detail.add "a des élastiques dans sa barbe", null, ['man']
domains.physical_detail.add "a des cicatrices sur le visage"
domains.physical_detail.add "a des piercings sur le visage"
domains.physical_detail.add "a le visage trop maquillé", null, ['woman']
domains.physical_detail.add "a le visage pâle"
domains.physical_detail.add "a des tatouages sur le visage"
domains.physical_detail.add "a les joues roses"
domains.physical_detail.add "a des peintures tribales sur le visage"
domains.physical_detail.add "a le visage buriné"
domains.physical_detail.add "a de l'acnée"
domains.physical_detail.add "a les cheveux rasés"

# Hairs
domains.physical_detail.add "a les cheveux rasés"
domains.physical_detail.add "a des cheveux très long"
domains.physical_detail.add "a les cheveux {hair_color}"
domains.physical_detail.add "a les cheveux en bataille"
domains.physical_detail.add "a les cheveux gras"
domains.physical_detail.add "a les cheveux très long"
domains.physical_detail.add "a des dessins rasé sur le crane"
domains.physical_detail.add "a des couettes"
domains.physical_detail.add "a des dreadlocks"

domains.skin_color = new Domain
domains.skin_color.add "très blanche"
domains.skin_color.add "noire"
domains.skin_color.add "grise"
domains.skin_color.add "jaune"
domains.skin_color.add "rouge", null, ['fantasy']

domains.hair_color = new Domain
domains.hair_color.add "blanc", 5
domains.hair_color.add "rose"
domains.hair_color.add "poivre et sel"
domains.hair_color.add "rouge"
    
domains.oral_detail = new Domain
domains.oral_detail.add "en répetant « {word_repeat} »", 3
domains.oral_detail.add "souvent à des gens absents"
domains.oral_detail.add "avec un langage ordurier"
domains.oral_detail.add "avec un cheveux sur la langue"
domains.oral_detail.add "avec une petite voix"
domains.oral_detail.add "avec une voix débile"
domains.oral_detail.add "avec une voix suraigue"
domains.oral_detail.add "avec une voix chantante"
domains.oral_detail.add "avec de l'accent"

domains.oral_detail.add "en beguayant"
domains.oral_detail.add "en zozotant"
domains.oral_detail.add "en postillionnant"
domains.oral_detail.add "en shuintant"
domains.oral_detail.add "en marmonant"
domains.oral_detail.add "d'une voix monotone"
domains.oral_detail.add "d'une voix faible"
domains.oral_detail.add "d'une voix nasillarde"
domains.oral_detail.add "d'une voix guturale"
domains.oral_detail.add "en étant essouflé"
domains.oral_detail.add "en articulant excessivement"

domains.oral_detail.add "en tapotant des doigts"
domains.oral_detail.add "en s'amusant avec un objet"
domains.oral_detail.add "en gesticulant"
domains.oral_detail.add "en se carressant la barbe", null, ['man']
domains.oral_detail.add "en changeant d'histoire souvent"
domains.oral_detail.add "en recherchant l'approbation de son auditoire"
domains.oral_detail.add "en jouant la comédie"
domains.oral_detail.add "en s'adressant à lui même"

domains.oral_detail.add "avec fatalisme"
domains.oral_detail.add "avec optimisme"
domains.oral_detail.add "par questions"
domains.oral_detail.add "très vite"
domains.oral_detail.add "très lentement"
domains.oral_detail.add "avec un vocabulaire réduit"
domains.oral_detail.add "en disgressant sans cesse"
domains.oral_detail.add "en reniflant"
domains.oral_detail.add "de lui par son nom"
domains.oral_detail.add "sans s'arrêter"
domains.oral_detail.add "en mâchant quelque chose"
domains.oral_detail.add "après s'être racler la gorge"
domains.oral_detail.add "en évitant les contacts occulaires"
domains.oral_detail.add "en étant très près des gens"
domains.oral_detail.add "avec une mauvaise haleine"
domains.oral_detail.add "en prenant le temps de répondre"
domains.oral_detail.add "en ayant l'air distrait"
domains.oral_detail.add "en voulant être pote"
domains.oral_detail.add "sans terminer ses phrases"
domains.oral_detail.add "souvent à des gens absents"
domains.oral_detail.add "en rôtant régulierement"
domains.oral_detail.add "en soupirant régulièrement"
domains.oral_detail.add "en tordant la bouche"
domains.oral_detail.add "avec un faux sourire permanent"
domains.oral_detail.add "en se léchant les lêvres"

domains.word_repeat = new Domain
domains.word_repeat.add "Ok !!!"
domains.word_repeat.add "Euhhhhh...."
domains.word_repeat.add "Tu vois c'que j'veux dire ?"
domains.word_repeat.add "Lol"
domains.word_repeat.add "Putain"
domains.word_repeat.add "Délire"
domains.word_repeat.add "Comment on dit déjà ?"
domains.word_repeat.add "Délire"
domains.word_repeat.add "j'ai toujours révé de dire ça"


domains.start_idea = new Domain
domains.start_idea.add "C'est {people} {people_adj} qui {interact_with_people} {people} {people_adj}"
domains.start_idea.add "C'est {people} {people_adj} qui {interact_with_people} {people} {people_adj} dans {place}"
domains.start_idea.add "C'est {people} {people_adj} qui {interact_with_place} {place} {place_adj}"
domains.start_idea.add "C'est {people} {people_adj} qui {interact_with_place} {place} {place_adj} avec {people}"

domains.people = new Domain
domains.people.add "un scientifique"
domains.people.add "un gourou"
domains.people.add "un chef d'état"
domains.people.add "un top model"
domains.people.add "un dealer"
domains.people.add "un flic"
domains.people.add "un milliardaire"
domains.people.add "un acteur"
domains.people.add "un corporatiste"
domains.people.add "un médecin"
domains.people.add "un journaliste"

domains.people_adj = new Domain
domains.people_adj.add "fou"
domains.people_adj.add "machiavélique"
domains.people_adj.add "célèbre"
domains.people_adj.add "très vieux"
domains.people_adj.add "démoniaque"
domains.people_adj.add "généreux"
domains.people_adj.add ""
domains.people_adj.add ""
domains.people_adj.add ""

domains.interact_with_people = new Domain
domains.interact_with_people.add "demande de l'aide a"
domains.interact_with_people.add "poursuit"
domains.interact_with_people.add "recherche"
domains.interact_with_people.add "veux séduire"
domains.interact_with_people.add "se fait passer pour"
domains.interact_with_people.add "torture"
domains.interact_with_people.add "s'allie avec"

domains.interact_with_place = new Domain
domains.interact_with_place.add "introduit dans"
domains.interact_with_place.add "construit"
domains.interact_with_place.add "découvre"
domains.interact_with_place.add "détruit"
domains.interact_with_place.add "se cache dans"
domains.interact_with_place.add "s'évader d'"
domains.interact_with_place.add "se débarrasser d'"
domains.interact_with_place.add "achète"

domains.place = new Domain
domains.place.add "une prison"
domains.place.add "un laboratoire"
domains.place.add "une secte"
domains.place.add "une morque"
domains.place.add "des égouts"
domains.place.add "un supermarché"
domains.place.add "un club privé"
domains.place.add "un casino"
domains.place.add "un cinéma"
domains.place.add "une centrale nucléaire"
domains.place.add "une base militaire"
domains.place.add "un asile psychiatrique"
domains.place.add "une église"
domains.place.add "une usine"

domains.place_adj = new Domain
domains.place_adj.add "illégale"
domains.place_adj.add "clandestin(e)"
domains.place_adj.add "hanté(e)"
domains.place_adj.add "détruit(e)"
domains.place_adj.add "désert(e)"
domains.place_adj.add "abandoné(e)"
domains.place_adj.add "", 2

this.domains = domains
