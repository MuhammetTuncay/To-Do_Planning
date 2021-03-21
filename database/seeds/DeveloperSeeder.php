<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class DeveloperSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $developers=['1'=>'Rabia Doğan','2'=>'Hüseyin Şülen','3'=>'Muhammet Tuncay','4'=>'Sevgi Karasu','5'=>'Cantürk Değirmenci'];
        foreach($developers as $key => $value){
            DB::table('developers')->insert([
                'name_surname'=>$value,
                'level'=>$key,
                'developers_constant_time_value'=>$key,
                'created_at'=>now(),
                'updated_at'=>now()
            ]);
        }
    }
}
