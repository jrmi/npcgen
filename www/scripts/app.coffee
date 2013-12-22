# Coffee version

# Domain definition
this.Domain = class Domain
    constructor: -> 
        @content = []
        
    add: (label, weight=1, conditions=[], contextAddition=[]) ->
        @content.push( label:label, weight:weight, conditions:conditions, additions:contextAddition )
    
    _valid_in_context: (conditions, context) ->
        if conditions.length > 0 
            for cond in conditions
                if cond in context
                  return true
            return false
            
        return true
    
    _total_weight: (context) ->
        @content.reduce (prev, cur, i, arr) =>
            if @_valid_in_context(cur.conditions, context)
                prev + cur.weight
            else
                prev
        , 0
        
    _pick: (context) ->
        rand = (min, max) ->
            Math.random() * (max - min) + min

        random_num = rand(0, @_total_weight(context))
        weight_sum = 0
        
        for elt in @content
            if @_valid_in_context(elt.conditions, context)
                weight_sum += elt.weight
                weight_sum = +weight_sum.toFixed(2)
             
                if random_num <= weight_sum
                    return elt
                
    resolve: (context=[]) ->
        elt = @_pick(context)
            
        label = elt.label.replace  /\{([^\}]*)\}/g , (match, name) ->
            if window.domains[name]?
                window.domains[name].resolve(context.concat(elt.additions))
            else
                '...'
            
        return label


# IHM interactions
document.addEventListener 'DOMComponentsLoaded', ->
    $().ready ()->
        list = $('#npclist')
        
        $('#generate').on 'click', (e) ->
            text = window.domains.start.resolve()
            new_elt = $("<li class='hidden'><p>#{text}</p></li>")
            list.prepend(new_elt)
            new_elt.show(500)
        
        $('.prev').on 'click', (e) ->
            $('#main-deck')[0].shufflePrev()
          
        $('.next').on 'click', (e) ->
            $('#main-deck')[0].shuffleNext()
        
