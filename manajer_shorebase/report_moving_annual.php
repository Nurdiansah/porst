<?php
$tahun = date('Y');

$id_client = '1';
if (isset($_POST['submit'])) {
    $tahun = $_POST['tahun'];
}


$bulan    = date('n');

$arrayTotal[][] = 0;

$queryClient = mysqli_query($koneksi, "SELECT * FROM client ORDER BY nm_client ASC ");
$n = mysqli_num_rows($queryClient);

$dataClient = mysqli_fetch_assoc($queryClient);
if (mysqli_num_rows($queryClient)) {
    while ($Client = mysqli_fetch_assoc($queryClient)) :

        $id_client = $Client['id_client'];
        $nm_client = $Client['nm_client2'];
        $queryTotal = mysqli_query($koneksi, "SELECT sum(total_cargo) AS jumlah FROM moving WHERE id_client = '$id_client'  AND year(finish_kegiatan)= $tahun ");
        $dataTotal = mysqli_fetch_assoc($queryTotal);
        $totalCargo = $dataTotal['jumlah'];
        $array1 = [
            'client' => $nm_client,
            'total_cargo' => $totalCargo
        ];

        $array2[] = $array1;
    endwhile;
}


?>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-sm-6">
            <a href="index.php?p=report_moving_monthly"> <button type="button" class="btn btn-success"><i class="fa fa-clock-o"> Monthly</i></button></a>
            <button type="button" class="btn btn-dark"><i class="fa fa-calendar"> Annual</i></button>
        </div>
    </div>
    <br>
    <div class="row">
        <form action="" method="post">
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
    <h3 class="text-center">Annual Report Internal Moving</h3>
    <div id="chartdiv-vessel"></div>
    <!-- Table -->
    <br><br>
    <div class="row ">
        <!-- Table -->
        <div class="col-sm-8 ">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="text-center">Table Annual Report Internal Moving</h3>
                </div>
                <div class="box-body">
                    <table class="table table-striped">
                        <thead class="bg-primary">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Client</th>
                                <th scope="col">Ton/M<sup>3</sup></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $totalCargo = 0;
                            for ($i = 0; $i <= $n - 2; $i++) { ?>
                                <tr>
                                    <th scope="row"><?= $i + 1; ?></th>
                                    <td><?= $array2[$i]['client']; ?></td>
                                    <td><?= $array2[$i]['total_cargo']; ?></td>
                                </tr>
                            <?php
                                $totalCargo += $array2[$i]['total_cargo'];
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
                    <a target="_blank" href="../assets/excel/excel_annual_moving.php?tahun=<?= $tahun; ?>" class="btn btn-success"><i class="fa fa-file-excel-o"></i> Excel </a>
                </div>
            </div>
        </div>
        <!-- End Button -->
    </div>
    <!-- End Table -->
    </div>
</section>

<!-- Chart code    -->
<script>
    var cargoConoco = '<?= $array2[0]['total_cargo']; ?>';
    var cargoMedco = '<?= $array2[1]['total_cargo']; ?>';
    var cargoPhe = '<?= $array2[2]['total_cargo']; ?>';
    var cargoPetrogas = '<?= $array2[3]['total_cargo']; ?>';
    var cargoPremier = '<?= $array2[4]['total_cargo']; ?>';
    var cargoStar = '<?= $array2[5]['total_cargo']; ?>';

    // Baru
    am4core.ready(function() {

        // Themes begin
        am4core.useTheme(am4themes_material);
        // Themes end

        var chart = am4core.create("chartdiv-vessel", am4charts.PieChart3D);
        chart.hiddenState.properties.opacity = 0; // this creates initial fade-in

        chart.data = [{
                country: "Medco",
                litres: cargoMedco,
            },
            {
                country: "Conoco",
                litres: cargoConoco,
            },
            {
                country: "PHE",
                litres: cargoPhe,
            },
            {
                country: "Petrogas",
                litres: cargoPetrogas,
            },
            {
                country: "Premier Oil",
                litres: cargoPremier,
            },
            {
                country: "Star Energy",
                litres: cargoStar,
            }
        ];

        chart.innerRadius = am4core.percent(40);
        chart.depth = 120;

        chart.legend = new am4charts.Legend();

        var series = chart.series.push(new am4charts.PieSeries3D());
        series.dataFields.value = "litres";
        series.dataFields.depthValue = "litres";
        series.dataFields.category = "country";
        series.slices.template.cornerRadius = 5;
        series.colors.step = 3;

    }); // end am4core.ready() 
</script>