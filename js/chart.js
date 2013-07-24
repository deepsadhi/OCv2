function init(){
	compare([4,5]);
	$.getJSON('logs/msg.json', 	function(data) {
		$("#msg").html(data);
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
				'#ff0000', 
				'#00ff00', 
				'#8bbc21', 
				'#910000', 
				'#1aadce', 
				'#492970',
				'#f28f43', 
				'#77a1e5', 
				'#c42525', 
				'#a6c96a'
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


