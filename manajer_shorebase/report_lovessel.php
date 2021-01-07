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

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-sm-6">
            <button type="button" class="btn btn-dark"><i class="fa fa-calendar"> Last</i></button>
            <a href="index.php?p=report_lovessel_monthly"><button type="button" class="btn btn-success"><i class="fa fa-clock-o"> Monthly</i></button></a>
            <a href="index.php?p=report_lovessel_annual"><button type="button" class="btn btn-danger"><i class="fa fa-calendar"> Annual</i></button></a>
        </div>
    </div>
    <h2 class="text-center">Stevedoring Vessel</h2>
    <div id="chartdiv-vessel"></div>

    </div>
</section>

<!-- Chart code    -->
<script>
    am4core.ready(function() {

        // Themes begin
        am4core.useTheme(am4themes_animated);
        // Themes end



        var chart = am4core.create('chartdiv-vessel', am4charts.XYChart)
        chart.colors.step = 2;

        chart.legend = new am4charts.Legend()
        chart.legend.position = 'top'
        chart.legend.paddingBottom = 20
        chart.legend.labels.template.maxWidth = 95

        var xAxis = chart.xAxes.push(new am4charts.CategoryAxis())
        xAxis.dataFields.category = 'category'
        xAxis.renderer.cellStartLocation = 0.1
        xAxis.renderer.cellEndLocation = 0.9
        xAxis.renderer.grid.template.location = 0;

        var yAxis = chart.yAxes.push(new am4charts.ValueAxis());
        yAxis.min = 0;

        function createSeries(value, name) {
            var series = chart.series.push(new am4charts.ColumnSeries())
            series.dataFields.valueY = value
            series.dataFields.categoryX = 'category'
            series.name = name

            series.events.on("hidden", arrangeColumns);
            series.events.on("shown", arrangeColumns);

            var bullet = series.bullets.push(new am4charts.LabelBullet())
            bullet.interactionsEnabled = false
            bullet.dy = 30;
            bullet.label.text = '{valueY}'
            bullet.label.fill = am4core.color('#ffffff')

            return series;
        }

        chart.data = [{
                category: 'September',
                first: 3530,
                second: 2778,
                third: 3069,
                fourth: 1842,
                fifth: 2778,
                sixth: 1842
            },
            {
                category: 'Oktober',
                first: 3527,
                second: 2740,
                third: 3045,
                fourth: 1842,
                fifth: 2778,
                sixth: 1842
            },
            {
                category: 'November',
                first: 3550,
                second: 2733,
                third: 3022,
                fourth: 1842,
                fifth: 2778,
                sixth: 1842
            }
        ]


        createSeries('first', 'PHE');
        createSeries('second', 'Medco');
        createSeries('third', 'Premier Oil');
        createSeries('fourth', 'Star Energy');
        createSeries('fifth', 'Petrogas');
        createSeries('sixth', 'Baker');


        function arrangeColumns() {

            var series = chart.series.getIndex(0);

            var w = 1 - xAxis.renderer.cellStartLocation - (1 - xAxis.renderer.cellEndLocation);
            if (series.dataItems.length > 1) {
                var x0 = xAxis.getX(series.dataItems.getIndex(0), "categoryX");
                var x1 = xAxis.getX(series.dataItems.getIndex(1), "categoryX");
                var delta = ((x1 - x0) / chart.series.length) * w;
                if (am4core.isNumber(delta)) {
                    var middle = chart.series.length / 2;

                    var newIndex = 0;
                    chart.series.each(function(series) {
                        if (!series.isHidden && !series.isHiding) {
                            series.dummyData = newIndex;
                            newIndex++;
                        } else {
                            series.dummyData = chart.series.indexOf(series);
                        }
                    })
                    var visibleCount = newIndex;
                    var newMiddle = visibleCount / 2;

                    chart.series.each(function(series) {
                        var trueIndex = chart.series.indexOf(series);
                        var newIndex = series.dummyData;

                        var dx = (newIndex - trueIndex + middle - newMiddle) * delta

                        series.animate({
                            property: "dx",
                            to: dx
                        }, series.interpolationDuration, series.interpolationEasing);
                        series.bulletsContainer.animate({
                            property: "dx",
                            to: dx
                        }, series.interpolationDuration, series.interpolationEasing);
                    })
                }
            }
        }

    }); // end am4core.ready()
</script>