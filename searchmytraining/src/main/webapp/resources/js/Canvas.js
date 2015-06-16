
	abc();
	function abc() {

		var chart = new CanvasJS.Chart("chartContainer", {
			/*theme : "theme2",//theme1
*/			title : {
				text : "Calenders",
					verticalAlign: 'top',
					horizontalAlign: 'left'
			},
			animationEnabled : true, 
			data : [ {
				// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
				type : "column",
				
				dataPoints : [ {
					label : "Newly Uploaded",
					y : 10
				}, {
					label : "Modified",
					y : 15
				}, {
					label : "Verified",
					y : 25
				}, {
					label : "NotVerified",
					y : 30
				} ]
			} ]
		});
		chart.render();
	}

	splineChart();
	 function splineChart() {
		var chart = new CanvasJS.Chart("chartContainer1",
		{
			animationEnabled: true,
			title:{
				text: "Spline Charts",
				verticalAlign: 'top',
				horizontalAlign: 'left'
			},
			data: [
			{
				type: "spline", //change type to bar, line, area, pie, etc
				showInLegend: true,        
				dataPoints: [
					{ x: 10, y: 51 },
					{ x: 20, y: 45},
					{ x: 30, y: 50 },
					{ x: 40, y: 62 },
					{ x: 50, y: 95 },
					{ x: 60, y: 66 },
					{ x: 70, y: 24 },
					{ x: 80, y: 32 },
					{ x: 90, y: 16}
				]
				},
				{
				type: "spline",
				showInLegend: true,        
				dataPoints: [
					{ x: 10, y: 21 },
					{ x: 20, y: 44},
					{ x: 30, y: 35 },
					{ x: 40, y: 45 },
					{ x: 50, y: 75 },
					{ x: 60, y: 58 },
					{ x: 70, y: 18 },
					{ x: 80, y: 30 },
					{ x: 90, y: 11}
				]
				}
			],
			legend: {
				cursor: "pointer",
				itemclick: function (e) {
					if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
						e.dataSeries.visible = false;
					} else {
						e.dataSeries.visible = true;
				}
				chart.render();
				}
			}
		});

		chart.render();
	}
	 
	 
	 pieChart();
	  function pieChart() {
			var chart = new CanvasJS.Chart("chartContainer2",
			{
				title:{
					text: "Industries",
					verticalAlign: 'top',
					horizontalAlign: 'left'
				},
		                animationEnabled: true,
				
				
				data: [
				{        
					type: "pie",       
					startAngle:20,  
					
					indexLabel: "{label} {y}%",
					  
					showInLegend: true,
					toolTipContent:"{legendText} {y}%",
					dataPoints: [
						{  y: 52.50, legendText:"IT", label: "IT" },
						{  y: 16.50, legendText:"ABC", label: "ABC" },
						{  y: 10.50, legendText:"PQR", label: "PQR" },
						{  y: 16.50, legendText:"XYZ" , label: "XYZ"},       
						{  y: 11.00, legendText:"Others" , label: "Others"}
					]
				}
				]
			});
			chart.render();
		}
	  
	  doughnutChart();
	  function doughnutChart() {
			var chart = new CanvasJS.Chart("chartContainer3",
			{
				title:{
					text: "Email",
					verticalAlign: 'top',
					horizontalAlign: 'left'
				},
		                animationEnabled: true,
				data: [
				{        
					type: "doughnut",
					startAngle:20,
					toolTipContent: "{label}: {y} - <strong>#percent%</strong>",
					indexLabel: "{label} #percent%",
					dataPoints: [
						{  y: 67, label: "Inbox" },
						{  y: 28, label: "Archives" },
						{  y: 10, label: "Labels" },
						{  y: 7,  label: "Drafts"},
						{  y: 4,  label: "Trash"}
					]
				}
				]
			});
			chart.render();
		}