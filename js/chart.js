function init(){
	header();
	compare([4,5]);
	$.getJSON('logs/msg.json', 	function(data) {
		$("#msg").html(data);
	});
}

function header(){
	var link_select = $('#navigation #main-nav a[href^="#"]');	//Selects all 'href' attributes with the initial string '#'
	var prev_class = link_select;	//Sets the current class as previous class for the next click event
	$(link_select).click(function(event){
		event.preventDefault();	//Prevents the click event to trigger
		var get_href = $(this).attr('href');	//Get the value of 'href' attribute
		var para = $(get_href);
		prev_class.removeClass('active');
		$(this).addClass('active');
		prev_class = $(this);
		pos = 0;
		if(get_href != '#'){
			pos = para.position().top;
			$('html,body').animate({scrollTop:pos}, 800);
		}
		else{
			$('html,body').animate({scrollTop: 0}, 800);
		}
	});
}


function chart(petroleumProduct){
	var seriesOptions = [],
		yAxisOptions = [],
		seriesCounter = 0,
		names = petroleumProduct,
		colors = Highcharts.getOptions().colors;

	$.each(names, function(i, name) {
		id = name.replace(': ','_');
		id = id.replace(' ', '');
		$.getJSON('json.php?getData='+ id.toLowerCase(), 	function(data) {

			seriesOptions[i] = {
				name: name,
				data: data
			};

			// As we're loading the data asynchronously, we don't know what order it will arrive. So
			// we keep a counter and create the chart when all the data is loaded.
			seriesCounter++;

			if (seriesCounter == names.length) {
				createChart();
			}
		});
	});



	// create the chart when all data is loaded
	function createChart() {

		$('#container').highcharts('StockChart', {
			chart: {
			},
			
			title: {
				text: 'Oil Price Comparision',
				x: -20 //center
			},
			subtitle: {
				text: 'Source: nepaloil.com.np<br>iocl.com',
				x: -20
			},
		
			colors: [
				'#1abc9c',
				'#f1c40f',
				'#d35400',
				'#8e44ad',
				'#2c3e50',
				'#34495e',
				'#E8601C'
			],
			
			legend: {
				enabled: true,
				//align: 'right',
				//layout: 'horizontal',
				verticalAlign: 'bottom',
				//y: 100,
				borderWidth: 0,
			},
			
			rangeSelector: {
				selected: 5
			},

			yAxis: {
				title: {
					text: 'Price (NRS)'
				},
				labels: {
					formatter: function() {
						return this.value;
					}
				},
				plotLines: [{
					value: 0,
					width: 2,
					color: 'silver'
				}]
			},
			
			plotOptions: {
				series: {
					compare: 'null'
				}
			},
			
			tooltip: {
				pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b><br/>',
				valueDecimals: 2
			},
			
			series: seriesOptions
		});
	}

}

function compare(petroleumProducts){
	var petroleumProductsList = new Array('NP: Petrol', 'IN: Petrol', 'NP: Diesel', 'IN: Diesel', 'NP: Kerosene', 'IN: Kerosene', 'NP: LP Gas');
	
	if(arguments.length == 0){
		comparePetroleumProduct = new Array();
		for (i=0; i<petroleumProductsList.length; i++){
			if($('#option'+i).prop('checked')){
				comparePetroleumProduct.push(petroleumProductsList[i]);
			}
		}
		chart(comparePetroleumProduct);
		
	}else if(arguments.length == 1){
		for(i=0;i<petroleumProductsList.length;i++){
			$('#option'+i).prop('checked', false);
		}
		
		comparePetroleumProduct = new Array();
		for (i=0; i<petroleumProducts.length; i++){
			comparePetroleumProduct.push(petroleumProductsList[petroleumProducts[i]]);
		}
		
		chart(comparePetroleumProduct);
		
		for(i=0;i<=petroleumProducts.length;i++){
			$('#option'+petroleumProducts[i]).prop('checked', true);
		}
	}

}


