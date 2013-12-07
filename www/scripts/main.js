/* */

var rand = function(min, max) {
    return Math.random() * (max - min) + min;
};

var pickRandomWeighted = function(list, weight) {
    var total_weight = weight.reduce(function (prev, cur, i, arr) {
        return prev + cur;
    });
     
    var random_num = rand(0, total_weight);
    var weight_sum = 0;
     
    for (var i = 0; i < list.length; i++) {
        weight_sum += weight[i];
        weight_sum = +weight_sum.toFixed(2);
         
        if (random_num <= weight_sum) {
            return list[i];
        }
    }
};

var pickRandom = function(list){
	return list[list.length * Math.random() << 0];
};

document.addEventListener('DOMComponentsLoaded', function(){
	$().ready(function(){
		var list = $('#npclist');
		
		$('#generate').on('click', function(e){
			var text = '';
			for (field in npc_tmpl){
				var val;
				if('weight' in npc_tmpl[field]){
					val = pickRandomWeighted(npc_tmpl[field].data, npc_tmpl[field].weight);
				}else{
					val = pickRandom(npc_tmpl[field].data);
				}
				text = text + npc_tmpl[field].label + ' : ' + val +  ' <br>';
			}
			
			var new_elt = $('<li class="hidden"><p>' + text + '</p></li>');
			
			list.prepend(new_elt);
			new_elt.show(500);
			
		});
		
		$('.prev').on('click', function(e){
			$('#main-deck')[0].shufflePrev();
		});	
		$('.next').on('click', function(e){
			$('#main-deck')[0].shuffleNext();
		});
	});
});
