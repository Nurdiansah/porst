<?php

include "../fungsi/fungsi.php";

$tahun = date('Y');

$id_client = 'all';

if (isset($_POST['submit'])) {
    $id_client = $_POST['id_client'];
    $tahun = $_POST['tahun'];
}

$queryClient = mysqli_query($koneksi, "SELECT * FROM client WHERE id_client = '$id_client'");
$dataClient = mysqli_fetch_assoc($queryClient);

$bulan    = date('n');

$arrayTotal[] = 0;


if ($id_client == 'all') {
    for ($i = 1; $i <= 12; $i++) {
        $queryTotal = mysqli_query($koneksi, "SELECT sum(total_cargo) AS jumlah FROM stacking WHERE month(finish_kegiatan)= $i AND year(finish_kegiatan)= $tahun ");
        $dataTotal = mysqli_fetch_assoc($queryTotal);
        $total = $dataTotal['jumlah'];

        $arrayTotal[] += $total;
    }
} else {
    for ($i = 1; $i <= 12; $i++) {
        $queryTotal = mysqli_query($koneksi, "SELECT sum(total_cargo) AS jumlah FROM stacking WHERE id_client = '$id_client' AND month(finish_kegiatan)= $i AND year(finish_kegiatan)= $tahun ");
        $dataTotal = mysqli_fetch_assoc($queryTotal);
        $total = $dataTotal['jumlah'];

        $arrayTotal[] += $total;
    }
}

$data = $arrayTotal;
?>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-sm-6">
            <!-- <a href="index.php?p=report_lovessel"><button type="button" class="btn btn-primary"><i class="fa fa-calendar"> Last</i></button></a> -->
            <button type="button" class="btn btn-dark"><i class="fa fa-clock-o"> Monthly</i></button>
            <a href="index.php?p=report_stacking_annual"><button type="button" class="btn btn-danger"><i class="fa fa-calendar"> Annual</i></button></a>
        </div>
    </div>
    <br>
    <div class="row">
        <form action="" method="post">
            <div class="form-group mt-3">
                <div class="col-sm-offset- col-sm-2">
                    <select id="select2" name="id_client" class="form-control" required>
                        <?php if ($id_client == 'all') { ?>
                            <option value="all">Semua Client</option>
                        <?php } else { ?>
                            <option value="<?= $id_client; ?>"><?= $dataClient['nm_client2']; ?></option>
                            <option value="all">Semua Client</option>
                        <?php } ?>
                        <?php $queryClient = mysqli_query($koneksi, "SELECT * FROM client WHERE id_client != '$id_client'ORDER BY  nm_client  ASC ");
                        if (mysqli_num_rows($queryClient)) {
                            while ($rowClient = mysqli_fetch_assoc($queryClient)) :
                        ?>
                                <option value="<?= $rowClient['id_client']; ?>" type="checkbox"><?= $rowClient['nm_client']; ?></option>
                        <?php endwhile;
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset- col-sm-2">
                    <select name="tahun" class="form-control" required>
                        <?php if (isset($_POST['submit'])) { ?>
                            <option value="<?= $tahun; ?>"><?= $tahun; ?></option>
                        <?php } else { ?>
                            <option value="<?= $tahun; ?>"><?= $tahun; ?></option>
                            <option value="2019">2019</option>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <button type="submit" name="submit" class="btn bg-primary"><i class="fa fa-check-square"></i> Cek </button>
        </form>
    </div>
    <h3 class="text-center">Monthly Report Stacking & Stuffing</h3>
    <h3 class="text-center"><?= $dataClient['nm_client2']; ?></h3>
    <div id="chartdiv-vessel"></div>
    <br><br>
    <div class="row ">
        <!-- Table -->
        <div class="col-sm-8 ">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Table Monthly Report Stacking & Stuffing</h3>
                </div>
                <div class="box-body">
                    <table class="table table-striped">
                        <thead class="bg-primary">
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Bulan</th>
                                <th scope="col">Ton/M<sup>3</sup></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $totalCargo = 0;
                            for ($i = 1; $i <= 12; $i++) { ?>
                                <tr>
                                    <th scope="row"><?= $i; ?></th>
                                    <td><?= bulanArray($i); ?></td>
                                    <td><?= $arrayTotal[$i]; ?></td>
                                </tr>
                            <?php
                                $totalCargo += $arrayTotal[$i];
                            } ?>
                            <tr>
                                <td colspan="2" class="text-center">
                                    <h3>Total</h3>
                                </td>
                                <td>
                                    <h3><?= $totalCargo; ?></h3>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- End Table -->
        <!-- Button Print -->
        <div class="col-sm-4">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Export Report</h3>
                </div>
                <div class="box-body">
                    <a target="_blank" href="../assets/excel/excel_monthly_stacking.php?id_client=<?= $id_client; ?>&tahun=<?= $tahun; ?>" class="btn btn-success"><i class="fa fa-file-excel-o"></i> Excel </a>
                </div>
            </div>
        </div>
        <!-- End Button -->
    </div>
    </div>

</section>

<!-- Chart code    -->
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
        am4core.useTheme(am4themes_animated);
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv-vessel", am4charts.XYChart);

        // Add data
        chart.data = [{
            "country": "Januari",
            "visits": cargoJanuari
        }, {
            "country": "Februari",
            "visits": cargoFebruari
        }, {
            "country": "Maret",
            "visits": cargoMaret
        }, {
            "country": "April",
            "visits": cargoApril
        }, {
            "country": "Mei",
            "visits": cargoMei
        }, {
            "country": "Juni",
            "visits": cargoJuni
        }, {
            "country": "Juli",
            "visits": cargoJuli
        }, {
            "country": "Agustus",
            "visits": cargoAgustus
        }, {
            "country": "September",
            "visits": cargoSeptember
        }, {
            "country": "Oktober",
            "visits": cargoOktober
        }, {
            "country": "November",
            "visits": cargoNovember
        }, {
            "country": "Desember",
            "visits": cargoDesember
        }];

        // Create axes

        var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
        categoryAxis.dataFields.category = "country";
        categoryAxis.renderer.grid.template.location = 0;
        categoryAxis.renderer.minGridDistance = 30;

        categoryAxis.renderer.labels.template.adapter.add("dy", function(dy, target) {
            if (target.dataItem && target.dataItem.index & 2 == 2) {
                return dy + 25;
            }
            return dy;
        });

        var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

        // Create series
        var series = chart.series.push(new am4charts.ColumnSeries());
        series.dataFields.valueY = "visits";
        series.dataFields.categoryX = "country";
        series.name = "Visits";
        series.columns.template.tooltipText = "{categoryX}: [bold]{valueY}[/]";
        series.columns.template.fillOpacity = .8;

        var columnTemplate = series.columns.template;
        columnTemplate.strokeWidth = 2;
        columnTemplate.strokeOpacity = 1;

    }); // end am4core.ready()

    $("#select2").select2({
        templateSelection: formatState
    });
</script>