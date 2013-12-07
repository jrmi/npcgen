
var age = ['Jeune', 'Adulte' ,'Agé(e)'];
var age_weight = [1, 4 , 1];
var sex = ['Homme', 'Femme'];

var physical_details = ['mince', 'rachitique', 'gros bide', 'géant', 'musclé', 
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
     
var oral_details = [ 'répète « Ok ! »', 'dit « Euhhhhh » souvent', "répète « tu vois c'que je veux dire »", 
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
    
   
var sex_obj = {label: 'Sexe', data: sex};
var age_obj = {label: 'Age', data: age, weight: age_weight};
var physic_obj = {label: 'Physique', data: physical_details};
var oral_obj = {label: 'Oral', data: oral_details};

var npc_tmpl = [sex_obj, age_obj, physic_obj, oral_obj];
