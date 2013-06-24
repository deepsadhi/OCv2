function prepareChart(chartList){
	var seriesOptions = [],
		yAxisOptions = [],
		seriesCounter = 0,
		names = chartList,
		colors = Highcharts.getOptions().colors;

	$.each(names, function(i, name) {
		id=name.replace(': ','_');
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

function displayChart(){
	chartList=new Array();
	list = new Array('NP: Petrol', 'IN: Petrol', 'NP: Diesel', 'IN: Diesel', 'NP: Kerosene', 'IN: Kerosene');
	for (i=0; i<=5; i++){
		if($('#option'+i).prop('checked')){
			chartList.push(list[i]);
		}
	}
	prepareChart(chartList);
}

