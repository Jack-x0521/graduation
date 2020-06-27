(function($){

	var global = {
		defaults : {
			column : 6,
			gutter : '10px',
			itemHeight : '100%',
			itemSelector : '.grid-item',
		},
		options : {
			gridWidth : null,
			gridHeight : null,
			gridGutter : null,
			gridItemWidth : null,
			gridItemHeight : null,
			gridMap : [],
			breakpoints : [],
			rangeValues : [],
			currentbreakpoint : {},
			resizeDelay : 180,
			resizeTimeout : null,
		},
		functions : {
			isPx : function(value){
				value = value.toLowerCase();
				if (~value.indexOf('px')){
					return true;
				}
				return false;
			},
			isPercent : function(value){
				value = value.toLowerCase();
				if (~value.indexOf('%')){
					return true;
				}
				return false;
			},
			getPxValue : function(value, size){
				size_ = parseInt(value);
				if (isNaN(size_)){
					size_ = 0;
				}
				if (global.functions.isPercent(value)){
					return Math.floor(size * size_ / 100);
				}
				if (global.functions.isPx(value)){
					return Math.floor(size_);
				}
				return 0;
			},
		}
	};

	Grid = function(block, settings){
		this.options = {};
		this.options.grid = $(block);
		this.init(settings);
	};

	Grid.prototype = {
		// initalizing
		init : function(settings){
			var self = this;
			// applying default settings
			$.extend(true, this.options, global.options);
			$.extend(true, this.options, global.defaults);
			$.extend(true, this.options, settings);
			// parsing breakpoints
			$.each(this.options.breakpoints, function(key, breakpoint){
				breakpoint.condition = self.parseBreakpoint(key, breakpoint.range);
			});
			// applying main methods
			this.resize();
			// applying main methods when resizing finished
			$(window).resize(function(){
				if (self.options.resizeTimeout !== null){
					clearTimeout(self.options.resizeTimeout);
				}
				self.options.resizeTimeout = setTimeout(function(){
					self.resize();
				}, self.options.resizeDelay);
			});
		},
		// resizing method
		resize : function(){
			var self = this;
			this.options.resizeTimeout = null;
			// getting current breakpoint
			$.each(this.options.breakpoints, function(key, breakpoint){
				if ((breakpoint.condition)(window.innerWidth)){
					if (breakpoint.range != self.options.currentbreakpoint.range){
						self.options.currentbreakpoint = breakpoint;
						$.extend(true, self.options, breakpoint.options);
					}
				}
			});
			// calculating main sizes
			this.options.grid.css({
				'position' : 'relative'
			});
			this.options.gridWidth = this.options.grid.width();
			this.options.gridGutter = global.functions.getPxValue(this.options.gutter, this.options.gridWidth);
			this.options.gridItemWidth = Math.floor((this.options.gridWidth - (this.options.column - 1) * this.options.gridGutter) / this.options.column);
			this.options.gridItemHeight = global.functions.getPxValue(this.options.itemHeight, this.options.gridItemWidth);
			// applying main methods
			this.initMap();
			this.calculateMap();
			this.renderGrid();
		},
		// creating the map
		calculateMap : function(){
			var self = this;
			// adding blocks to the map
			this.options.grid.children(this.options.itemSelector).css({
				'position' : 'absolute'
			}).each(function(k){
				var colspan = $(this).data('colspan') || 1;
				var rowspan = $(this).data('rowspan') || 1;
				colspan = Math.min(colspan, self.options.column);
				var added = false;
				var i, j;
				for (i = 0; i < self.options.gridMap.length; ++i){
					for (j = 0; j < self.options.gridMap[i].length; ++j){
						if (self.isFreeMap(i, j, colspan, rowspan)){
							self.addBlockToMap(i, j, colspan, rowspan, {
								'block' : this,
								'colspan' : colspan,
								'rowspan' : rowspan,
							});
							added = true;
							break;
						}
					}
					if (added){
						break;
					}
				}
			});
		},
		// rendering the grid
		renderGrid : function(){
			// removing empty rows from the map
			this.removeEmptyRows();
			this.options.grid.css({
				'height' : this.calculateItemHeight(this.options.gridMap.length),
			});
			// checking if horizontal scrollbar appears
			if (document.body.clientWidth < this.options.gridWidth){
				this.resize();
			}
			// rendering all blocks
			var i, j;
			for (i = 0; i < this.options.gridMap.length; ++i){
				for (j = 0; j < this.options.gridMap[i].length; ++j){
					if (typeof(this.options.gridMap[i][j]) == 'object'){
						$(this.options.gridMap[i][j].block).css({
							'top' : this.calculateItemTop(i),
							'left' : this.calculateItemLeft(j),
							'width' : this.calculateItemWidth(this.options.gridMap[i][j].colspan),
							'height' : this.calculateItemHeight(this.options.gridMap[i][j].rowspan),
						});
					}
				}
			}
		},
		// initializing the map
		initMap : function(){
			var length = 0;
			this.options.grid.children(this.options.itemSelector).each(function(){
				length += $(this).data('rowspan') || 1;
			});
			this.options.gridMap = new Array(length);
			var i;
			for (i = 0; i < this.options.gridMap.length; ++i){
				this.options.gridMap[i] = new Array(this.options.column);
			}
		},
		// removing empty rows from the map
		removeEmptyRows : function(){
			var i, j;
			var isFree = null;
			// searching first empty row
			for (i = 0; i < this.options.gridMap.length; ++i){
				isFree = true;
				for (j = 0; j < this.options.gridMap[i].length; ++j){
					if (this.options.gridMap[i][j] !== undefined){
						isFree = false;
						break;
					}
				}
				if (isFree){
					break;
				}
			}
			// removing all rows after first empty row
			if (isFree) {
				var length = this.options.gridMap.length - 1;
				for (var k = length; k >= i; --k){
					this.options.gridMap.pop();
				}
			}
		},
		// searching free space for new block
		// i_, j_: starting coords for searching
		isFreeMap : function(i_, j_, colspan, rowspan){
			var isFree = true;
			var i, j;
			if (colspan > this.options.column - j_){
				isFree = false;
			} else {
				for (i = i_; i < i_ + rowspan; ++i){
					for (j = j_; j < j_ + colspan; ++j){
						if (this.options.gridMap[i][j] !== undefined){
							isFree = false;
							break;
						}
					}
					if (!isFree){
						break;
					}
				}
			}
			return isFree;
		},
		// adding block to the map
		// i_, j_: coords for inserting
		addBlockToMap : function(i_, j_, colspan, rowspan, object){
			this.options.gridMap[i_][j_] = object;
			var i, j;
			for (i = i_; i < i_ + rowspan; ++i){
				for (j = j_; j < j_ + colspan; ++j){
					if (i != i_ || j != j_){
						this.options.gridMap[i][j] = 0;
					}
				}
			}
		},
		// calculating block's width
		calculateItemWidth : function(colspan){
			return this.options.gridItemWidth * colspan + this.options.gridGutter * (colspan - 1);
		},
		// calculating block's height
		calculateItemHeight : function(rowspan){
			return this.options.gridItemHeight * rowspan + this.options.gridGutter * (rowspan - 1);
		},
		// calculating block's top coordinate
		calculateItemTop : function(row){
			return (row === 0) ? 0 : this.calculateItemHeight(row) + this.options.gridGutter;
		},
		// calculating block's left coordinate
		calculateItemLeft : function(col){
			return (col === 0) ? 0 : this.calculateItemWidth(col) + this.options.gridGutter;
		},
		// parsing breakpoints
		parseBreakpoint : function(key, range){
			var self = this;
			// Invalid? Always fail.
			if (typeof range != 'string')
				condition = function(v) { return false; };
			// Wildcard? Always succeed.
			if (range == '*')
				condition = function(v) { return true; };
			// Less than or equal (-X)
			else if (range.charAt(0) == '-'){
				this.options.rangeValues[key] = parseInt(range.substring(1));
				condition = function(v) { return (v <= self.options.rangeValues[key]); };
			}
			// Greater than or equal (X-)
			else if (range.charAt(range.length - 1) == '-'){
				this.options.rangeValues[key] = parseInt(range.substring(0, range.length - 1));
				condition = function(v) { return (v >= self.options.rangeValues[key]); };
			}
			// Range (X-Y)
			else if (~range.indexOf(range,'-')){
				range = range.split('-');
				this.options.rangeValues[key] = [parseInt(range[0]), parseInt(range[1])];
				condition = function(v) { return (v >= self.options.rangeValues[key][0] && v <= self.options.rangeValues[key][1]); };
			}
			// Exact match (X)
			else {
				this.options.rangeValues[key] = parseInt(range);
				condition = function(v) { return (v == self.options.rangeValues[key]); };
			}
			return condition;
		},
	};

	$.fn.responsivegrid = function(settings){
		if (typeof settings === 'object'){
			this.each(function(){
				new Grid(this, settings);
			});
		}
		return this;
	};

})(jQuery);
