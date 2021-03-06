// Generated by CoffeeScript 1.6.3
(function() {
  var Domain,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  this.Domain = Domain = (function() {
    function Domain() {
      this.content = [];
    }

    Domain.prototype.add = function(label, weight, conditions, contextAddition) {
      if (weight == null) {
        weight = 1;
      }
      if (conditions == null) {
        conditions = [];
      }
      if (contextAddition == null) {
        contextAddition = [];
      }
      return this.content.push({
        label: label,
        weight: weight,
        conditions: conditions,
        additions: contextAddition
      });
    };

    Domain.prototype._valid_in_context = function(conditions, context) {
      var cond, res, _i, _len, _ref, _ref1;
      if (conditions.length > 0 && context.length > 0) {
        res = true;
        for (_i = 0, _len = conditions.length; _i < _len; _i++) {
          cond = conditions[_i];
          if (cond[0] === '!') {
            if (_ref = cond.slice(1), __indexOf.call(context, _ref) >= 0) {
              res = res && false;
            }
          } else {
            if (_ref1 = !cond, __indexOf.call(context, _ref1) >= 0) {
              res = res && false;
            }
          }
        }
        return res;
      }
      return true;
    };

    Domain.prototype._total_weight = function(context) {
      var _this = this;
      return this.content.reduce(function(prev, cur, i, arr) {
        if (_this._valid_in_context(cur.conditions, context)) {
          return prev + cur.weight;
        } else {
          return prev;
        }
      }, 0);
    };

    Domain.prototype._pick = function(context) {
      var elt, rand, random_num, weight_sum, _i, _len, _ref;
      rand = function(min, max) {
        return Math.random() * (max - min) + min;
      };
      random_num = rand(0, this._total_weight(context));
      weight_sum = 0;
      _ref = this.content;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        elt = _ref[_i];
        if (this._valid_in_context(elt.conditions, context)) {
          weight_sum += elt.weight;
          weight_sum = +weight_sum.toFixed(2);
          if (random_num <= weight_sum) {
            return elt;
          }
        }
      }
    };

    Domain.prototype.resolve = function(context) {
      var elt, label;
      if (context == null) {
        context = [];
      }
      elt = this._pick(context);
      label = elt.label.replace(/\{([^\}]*)\}/g, function(match, name) {
        if (window.domains[name] != null) {
          return window.domains[name].resolve(context.concat(elt.additions));
        } else {
          return '...';
        }
      });
      return label;
    };

    return Domain;

  })();

  document.addEventListener('DOMComponentsLoaded', function() {
    return $().ready(function() {
      var list;
      list = $('#npclist');
      $('#generate').on('click', function(e) {
        var new_elt, text;
        text = window.domains.impro_muse.resolve();
        new_elt = $("<li class><p>" + text + "</p></li>");
        list.prepend(new_elt);
        text = window.domains.start_idea.resolve();
        new_elt = $("<li class><p>" + text + "</p></li>");
        list.prepend(new_elt);
        text = window.domains.start.resolve();
        new_elt = $("<li class><p>" + text + "</p></li>");
        list.prepend(new_elt);
        return new_elt.show(500);
      });
      $('.prev').on('click', function(e) {
        return $('#main-deck')[0].shufflePrev();
      });
      return $('.next').on('click', function(e) {
        return $('#main-deck')[0].shuffleNext();
      });
    });
  });

}).call(this);
