<?php

$bulan    = date('n');

$arrayTotal[] = 0;


for ($i = 1; $i <= 12; $i++) {
    $queryTotal = mysqli_query($koneksi, "SELECT sum(total_cargo) AS jumlah FROM job_order WHERE month(finish_kegiatan)= $i ");
    $dataTotal = mysqli_fetch_assoc($queryTotal);
    $total = $dataTotal['jumlah'];

    $arrayTotal[] += $total;
}

?>
<section class="content-header">
    <h1>
        Dashboard
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <h2 class="text-center">Stevedoring</h2>
    <div id="chartdiv"></div>



    </div>
</section>

<!-- Chart code -->
<!-- Chart code -->
<script>
    var toTal = '<?= $total ?>';
    var cargoJanuari = '<?= $arrayTotal[1]; ?>';
    var cargoFebruari = '<?= $arrayTotal[2]; ?>';
    var cargoMaret = '<?= $arrayTotal[3]; ?>';
    var cargoApril = '<?= $arrayTotal[4]; ?>';
    var cargoMei = '<?= $arrayTotal[5]; ?>';
    var cargoJuni = '<?= $arrayTotal[6]; ?>';
    var cargoJuli = '<?= $arrayTotal[7]; ?>';
    var cargoAgustus = '<?= $arrayTotal[8]; ?>';
    var cargoSeptember = '<?= $arrayTotal[9]; ?>';
    var cargoOktober = '<?= $arrayTotal[10]; ?>';
    var cargoNovember = '<?= $arrayTotal[11]; ?>';
    var cargoDesember = '<?= $arrayTotal[12]; ?>';

    am4core.ready(function() {

        // Themes begin
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv", am4charts.XYChart);

        chart.colors.step = 2;
        chart.maskBullets = false;

        // Add data
        chart.data = [{
            "date": "2020-01-01",
            "distance": cargoJanuari,
            "duration": 408
        }, {
            "date": "2020-02-01",
            "distance": cargoFebruari,
            "duration": 482
        }, {
            "date": "2020-03-01",
            "distance": cargoMaret,
            "duration": 0
        }, {
            "date": "2020-04-01",
            "distance": cargoApril,
            "duration": 0
        }, {
            "date": "2020-05-01",
            "distance": cargoMei,
            "duration": 501
        }, {
            "date": "2020-06-01",
            "distance": cargoJuni,
            "duration": 0
        }, {
            "date": "2020-07-01",
            "distance": cargoJuli,
            "duration": 1805
        }, {
            "date": "2020-08-01",
            "distance": cargoAgustus,
            "duration": 0
        }, {
            "date": "2020-09-01",
            "distance": cargoSeptember,
            "duration": 0
        }, {
            "date": "2020-10-01",
            "distance": cargoOktober,
            "duration": 0
        }, {
            "date": "2020-11-01",
            "distance": cargoNovember,
            "duration": 0
        }, {
            "date": "2020-12-01",
            "distance": cargoDesember,
            "duration": 0
        }];

        // Create axes
        var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
        dateAxis.renderer.grid.template.location = 0;
        dateAxis.renderer.minGridDistance = 50;
        dateAxis.renderer.grid.template.disabled = true;
        dateAxis.renderer.fullWidthTooltip = true;

        var distanceAxis = chart.yAxes.push(new am4charts.ValueAxis());
        distanceAxis.title.text = "Distance";
        //distanceAxis.renderer.grid.template.disabled = true;

        var durationAxis = chart.yAxes.push(new am4charts.DurationAxis());
        durationAxis.title.text = "Duration";
        durationAxis.baseUnit = "minute";
        //durationAxis.renderer.grid.template.disabled = true;
        durationAxis.renderer.opposite = true;
        durationAxis.syncWithAxis = distanceAxis;

        durationAxis.durationFormatter.durationFormat = "hh'h' mm'min'";



        // Create series
        var distanceSeries = chart.series.push(new am4charts.ColumnSeries());
        distanceSeries.dataFields.valueY = "distance";
        distanceSeries.dataFields.dateX = "date";
        distanceSeries.yAxis = distanceAxis;
        distanceSeries.tooltipText = "{valueY} Ton/m3";
        distanceSeries.name = "Ton/M3";
        distanceSeries.columns.template.fillOpacity = 0.7;
        distanceSeries.columns.template.propertyFields.strokeDasharray = "dashLength";
        distanceSeries.columns.template.propertyFields.fillOpacity = "alpha";
        distanceSeries.showOnInit = true;

        var distanceState = distanceSeries.columns.template.states.create("hover");
        distanceState.properties.fillOpacity = 0.9;

        var durationSeries = chart.series.push(new am4charts.LineSeries());
        durationSeries.dataFields.valueY = "duration";
        durationSeries.dataFields.dateX = "date";
        durationSeries.yAxis = durationAxis;
        durationSeries.name = "Duration";
        durationSeries.strokeWidth = 2;
        durationSeries.propertyFields.strokeDasharray = "dashLength";
        durationSeries.tooltipText = "{valueY.formatDuration()}";
        durationSeries.showOnInit = false;

        var durationBullet = durationSeries.bullets.push(new am4charts.Bullet());
        var durationRectangle = durationBullet.createChild(am4core.Rectangle);
        durationBullet.horizontalCenter = "middle";
        durationBullet.verticalCenter = "middle";
        durationBullet.width = 7;
        durationBullet.height = 7;
        durationRectangle.width = 7;
        durationRectangle.height = 7;

        var durationState = durationBullet.states.create("hover");
        durationState.properties.scale = 1.2;




        // Add legend
        chart.legend = new am4charts.Legend();

        // Add cursor
        chart.cursor = new am4charts.XYCursor();
        chart.cursor.fullWidthLineX = true;
        chart.cursor.xAxis = dateAxis;
        chart.cursor.lineX.strokeOpacity = 0;
        chart.cursor.lineX.fill = am4core.color("#000");
        chart.cursor.lineX.fillOpacity = 0.1;

    }); // end am4core.ready()
</script>