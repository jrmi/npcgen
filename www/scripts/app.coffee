# Coffee version

rand = (min, max) ->
    Math.random() * (max - min) + min

pickRandomWeighted = (list, weight) ->
    total_weight = weight.reduce (prev, cur, i, arr) -> 
        prev + cur
     
    random_num = rand(0, total_weight)
    weight_sum = 0
     
    for elt in list
        weight_sum += elt;
        weight_sum = +weight_sum.toFixed(2);
         
        if random_num <= weight_sum
            return elt
        

pickRandom = (list) ->
  list[list.length * Math.random() << 0]

domains = {}

class Domain
    
    constructor: -> 
        @content = []
        
    add: (label, weight=1, conditions=[], contextAddition=[]) ->
        @content.push( label:label, weight:weight )
        
    total_weight: (context=[]) ->
        @content.reduce (prev, cur, i, arr) -> 
            prev + cur.weight
        , 0
        
    pick: (context=[]) ->
        random_num = rand(0, @total_weight(context))
        weight_sum = 0
        
        for elt in @content
            console.log "#{random_num}, #{weight_sum}"
            weight_sum += elt.weight;
            weight_sum = +weight_sum.toFixed(2);
             
            if random_num <= weight_sum
                return elt.label
                
    resolve: (context=[]) ->
        label = @pick(context)
        
        label = label.replace  /\{([^\}]*)\}/g , (match, name) ->
            if domains[name]?
                domains[name].resolve(context)
            else
                '...'
            
        return label 
        
domains.start = new Domain
domains.start.add 'Le personnage est {sex}'
                
domains.sex = new Domain
domains.sex.add 'une femme {age} qui {physical_detail} et qui parle {oral_detail}'
domains.sex.add 'un homme {age} qui {physical_detail} et qui parle {oral_detail}'

domains.age = new Domain
domains.age.add 'agé(e)' 
domains.age.add 'jeune' 
domains.age.add 'adulte', 3
domains.age.add 'adolescent(e)', 2

physical_details = ['mince', 'rachitique', 'gros bide', 'géant', 'musclé', 
    'tout rond', 'petit', 'obése', 'vouté', 'bossu', 
    "peau colorée", "gros lobes d'oreille", 'une seule oreille',"pas de lobes d'oreille", 'oreilles décollés',
    "boucles d'oreilles", "oreilles déformées", 'bouche en cul de poule', 'dents parfaites', 'dents pointues',
    'dents gatées', 'lèvres très fines', "dents en métal", "dents de lapin", "dent de la chance", 
    "dent(s) manquante(s)", "pas de dent", "piercing", "a de grosses lèvres","a un bec de lièvre",
    'un bras manquant', 'les mains dans la poche', 'des mains énorme', 'tatouage sur les mains', 'une main manquante',
    "un avant-bras manquant", "des mains disproportionnées", 'nez en trompette', 'nez cassé', 'nez pointu', 
    'nez coupé', 'nez de cochon', "piercing sur le nez", "nez tordu", 'yeux verrons', 
    "porte des lunettes", "oeuil manquant", "yeux injectés de sang", "oeuil sans pupilles", "yeux maquillés", 
    "un strabisme", "yeux profonds", "yeux globuleux", "yeux fermés", "yeux à la picasso", 
    "n'a pas de sourcil", "a un seul sourcil", 'a des favoris', "a de la barbe", "a un collier", 
    "a de la moustache", "est imberbe", "est mal rasé", "a une longue barbe", "a un bouc", 
    "a des rubans dans la barbe", "a des élastique dans la barbe", 'cicatrices sur le visage', "des piercings sur le visage", "visage trop maquillé", 
    "visage allongé", "visage pâle", "a des tatouagessur le visage", "a les joues rose", "peintures tribales sur le visage", 
    "visage rougeaud", "visage buriné", "visage acnéique", "trait fin", 'cheveux rasés', 
    "cheveux blancs", "cheveux trés long", "cheveux gras", "cheveux courts", "cheveux poivre et sel", 
    "cheveux en pointes", "cheveux colorés", "dessin rasé sur le crane", "a des couettes", "cheveux de couleur étrange",
    "cheveux crépus", "cheveux en bataille", "a des dreadlocks" ]
    
domains.physical_detail = new Domain
domains.physical_detail.add "est mince"
domains.physical_detail.add "est rachitique"
domains.physical_detail.add "a un gros bide"
domains.physical_detail.add "est très grand(e)"
domains.physical_detail.add "est très musclé(e)"
domains.physical_detail.add "est tout(e) rond(e)"
domains.physical_detail.add "a de gros lobes d'oreille"
domains.physical_detail.add "a la peau {skin_color}"
domains.physical_detail.add "n'a qu'une seule oreille"
domains.physical_detail.add "a des cheveux très long"
domains.physical_detail.add "a les cheveux et colorés"
domains.physical_detail.add "a les cheveux en bataille"

oral_details = [ 'répète « Ok ! »', 'dit « Euhhhhh » souvent', "répète « tu vois c'que je veux dire »", 
    "répète « putain »", "répète « lol »", "répète « délire »", "Répète « j'ai toujours révé de faire ça »", 
    "répète « comment on dit déjà ? »", "utilise un langage ordurier", 'a un cheveu sur la langue','zozote', 
    'est bègue', 'postillionne', 'a un accent', 'shuinte', "marmonne", "parle en étant essouflé", 'voix monotone', 
    'voix faible', 'voix nasillarde', 'voix guturale', 'voix débile','voix suraigue', "voix forte", 
    "articule très bien", "voix chantante", 'tapote les doigts', "s'amuse avec un objet", 'gesticule en parlant',
    "joint ses doigts", "se caresse la barbe", "fait craquer ses doigts", "l'histoire change souvent", 
    "recherche l'approbation de l'auditoire", "joue la comédie", "se parle à lui même", "est fataliste", 
    "est optimiste", "est pessimiste", "parle par questions", "parle rapidement", "parle lentement", 
    "manque de vocabulaire", "disgresse sans cesse", 'renifle souvent', 'parle les yeux fermés', 
    'parle de lui par son nom', "ne s'arrête jamais de parler", "mâche quelque chose", "se racle la gorge",
    "ne regarde pas dans les yeux", 'parle très près des gens', 'a une mauvaise haleine', 'prend le temps de répondre',
    'est distrait', 'veut être pote', "ne termine pas ses phrases", "parle à des gens absent", "rôte régulierement", 
    "soupir régulièrement", "cligne d'un/des yeux", 'tord la bouche', 'a un faux sourire permanent', 
    'est partiellement paralysé', "a les yeux écquarquillés", "se lêche les lévres", "évite les yeux"]
    
domains.oral_detail = new Domain
domains.oral_detail.add "en répetant « {word_repeat} »"
domains.oral_detail.add "d'une voie guturale"
domains.oral_detail.add "en beguayant"
domains.oral_detail.add "en disgressant sans cesse"
domains.oral_detail.add "souvent à des gens absents"

domains.word_repeat = new Domain
domains.word_repeat.add "Ok !!!"
domains.word_repeat.add "Euhhhhh...."
domains.word_repeat.add "Tu vois c'que j'veux dire ?"
domains.word_repeat.add "lol"

domains.skin_color = new Domain
domains.skin_color.add "blanche"
domains.skin_color.add "noire"
domains.skin_color.add "grise"
domains.skin_color.add "rouge"

document.addEventListener 'DOMComponentsLoaded', ->
    $().ready ()->
        list = $('#npclist')
        
        $('#generate').on 'click', (e) ->
            text = domains.start.resolve()
            new_elt = $("<li class='hidden'><p>#{text}</p></li>")
          
            list.prepend(new_elt)
            new_elt.show(500)
        
        $('.prev').on 'click', (e) ->
            $('#main-deck')[0].shufflePrev()
          
        $('.next').on 'click', (e) ->
            $('#main-deck')[0].shuffleNext()
        
