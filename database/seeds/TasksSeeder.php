<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class TasksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_VERBOSE, 0);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        curl_setopt($curl, CURLOPT_URL, 'http://www.mocky.io/v2/5d47f24c330000623fa3ebfa');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($curl);
        curl_close($curl);

        $data = json_decode($result, true);

        foreach ($data as $key => $value) {
            $constant_duration_value = $value['zorluk']*$value['sure'];
            DB::table('tasks')->insert([
                'level'=> $value['zorluk'],
                'estimated_duration'=>$value['sure'],
                'constant_duration_value'=>$constant_duration_value,
                'is_processed'=>0,
                'created_at'=>now(),
                'updated_at'=>now()
            ]);
        }

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_VERBOSE, 0);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        curl_setopt($curl, CURLOPT_URL, 'http://www.mocky.io/v2/5d47f235330000623fa3ebf7');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

        $result = curl_exec($curl);
        curl_close($curl);

        $data = json_decode($result, true);

        foreach ($data as $key => $value) {
            foreach ($value as $business_task) {
                $constant_duration_value = $business_task['estimated_duration']*$business_task['level'];
                DB::table('tasks')->insert([
                    'level'=> $business_task['level'],
                    'estimated_duration'=>$business_task['estimated_duration'],
                    'constant_duration_value'=>$constant_duration_value,
                    'is_processed'=>0,
                    'created_at'=>now(),
                    'updated_at'=>now()
                ]);
            }
        }
    }
}
