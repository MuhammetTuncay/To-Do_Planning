<!DOCTYPE html>
<html lang="en">
<head>
    <title>Görev Yöneticisi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{
            background-image: url(https://productivityland.com/wp-content/uploads/essential-tools-for-saving-time-scaled.jpg);
            background-repeat: no-repeat;
            background-size: 100%;
        }
        table
        {
            text-align:center;
            border:2px solid black;
        }
        td
        {
            border:2px solid black;
            padding:8px;
        }
        tr
        {
            color:black;
            height:50px;
        }
        th{
            text-align:center;
        }
        h3{
            text-align:justify;
        }
    </style>
</head>
<body>
<div class="container">
    <br><br><br>
    <div class="row">
        <h3><b>Görevlerin Minimum Tamamlanma Süresi: {{ $dev_time }} Hafta</b></h3>
        <fieldset>
            <legend><b>Development Ekibimin Çalışma Süreleri</b></legend>
            <table class="table table-striped" style="width: 750px; height: 300px">
                <thead>
                <tr>
                    <th>Developer Id</th>
                    <th>Developer Ad & Soyad</th>
                    <th>Ortalama Çalışma Süresi</th>
                </tr>
                <hr>
                </thead>
                <tbody>
                @foreach($developers as $developer)
                    <tr>
                        <td>{{ $developer->id }}</td>
                        <td>{{ $developer->name_surname }}</td>
                        <td>{{ $team_average_working_time }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </fieldset>
    </div>
</div>

</body>
</html>
