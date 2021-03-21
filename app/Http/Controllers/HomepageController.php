<?php

namespace App\Http\Controllers;

use App\Models\Tasks;
use App\Models\Developers;
use Illuminate\Support\Facades\DB;
class HomepageController extends Controller
{
    public function index()
    {
        $developers = DB::table('developers')
            -> orderBy('level', 'desc')
            -> get();// tüm developerların bilgisi

        $developers_constant_time_value = Developers::sum('developers_constant_time_value');  // developer zaman göre çalışma performansı
        $constant_duration_value = Tasks::sum('constant_duration_value'); // Hepsi zorluk seviyesi 1 ken toplam süresi
        $team_average_working_time = $constant_duration_value/$developers_constant_time_value; //ortalama developer başıan iş yükü

            foreach ($developers as $developer) {
                if ($developer->level == 5) {
                    $tasks = DB::table('tasks')
                        ->where('is_processed','=',0)
                        -> orderBy('level', 'desc')
                        -> get();
                    $task_level = 5;
                    $dev_working_time_5 = 0;
                    foreach ($tasks as $task) {
                        $continue = 0;
                        if($dev_working_time_5+(($task->level*$task->estimated_duration)/$developer->level) >= $team_average_working_time){
                            break;
                        }
                        if ($task->level == $task_level) {
                            DB::table('tasks')
                                ->where('id',$task->id)
                                ->update([
                                'is_processed' => 1
                                ]);

                            $dev_working_time_5 += $task->estimated_duration * ($task_level / $developer->level);
                            $continue = 1;
                        }
                        if ($dev_working_time_5 >= $team_average_working_time) {
                            break;
                        }
                        if ($continue == 0) {
                            $task_level--;
                        }
                    }
                }

                if ($developer->level == 4) {
                    $tasks = DB::table('tasks')
                        ->where('is_processed','=',0)
                        -> orderBy('level', 'desc')
                        -> get();
                    $task_level = 5;
                    $dev_working_time_4 = 0;
                    foreach ($tasks as $task) {
                        $continue = 0;
                        if($dev_working_time_4+(($task->level*$task->estimated_duration)/$developer->level) >= $team_average_working_time){
                            break;
                        }
                        if ($task->level == $task_level) {
                            DB::table('tasks')
                                ->where('id',$task->id)
                                ->update([
                                    'is_processed' => 1
                                ]);

                            $dev_working_time_4 += $task->estimated_duration * ($task_level / $developer->level);
                            $continue = 1;
                        }
                        if ($dev_working_time_4 >= $team_average_working_time) {
                            break;
                        }
                        if ($continue == 0) {
                            $task_level--;
                        }
                    }
                }

                if ($developer->level == 3) {
                    $tasks = DB::table('tasks')
                        ->where('is_processed','=',0)
                        -> orderBy('level', 'desc')
                        -> get();
                    $task_level = 5;
                    $dev_working_time_3 = 0;
                    foreach ($tasks as $task) {
                        $continue = 0;
                        if($dev_working_time_3+(($task->level*$task->estimated_duration)/$developer->level) >= $team_average_working_time){
                            break;
                        }
                        if ($task->level == $task_level) {
                            DB::table('tasks')
                                ->where('id',$task->id)
                                ->update([
                                    'is_processed' => 1
                                ]);

                            $dev_working_time_3 += $task->estimated_duration * ($task_level / $developer->level);
                            $continue = 1;
                        }
                        if ($dev_working_time_3 >= $team_average_working_time) {
                            break;
                        }
                        if ($continue == 0) {
                            $task_level--;
                        }
                    }
                }

                if ($developer->level == 2) {
                    $tasks = DB::table('tasks')
                        ->where('is_processed','=',0)
                        -> orderBy('level', 'desc')
                        -> get();
                    $task_level = 5;
                    $dev_working_time_2 = 0;
                    foreach ($tasks as $task) {
                        $continue = 0;
                        if($dev_working_time_2+(($task->level*$task->estimated_duration)/$developer->level) >= $team_average_working_time){
                            break;
                        }
                        if ($task->level == $task_level) {
                            DB::table('tasks')
                                ->where('id',$task->id)
                                ->update([
                                    'is_processed' => 1
                                ]);

                            $dev_working_time_2 += $task->estimated_duration * ($task_level / $developer->level);
                            $continue = 1;
                        }
                        if ($dev_working_time_2 >= $team_average_working_time) {
                            break;
                        }
                        if ($continue == 0) {
                            $task_level--;
                        }
                    }
                }

                if ($developer->level == 1) {
                    $tasks = DB::table('tasks')
                        ->where('is_processed','=',0)
                        -> orderBy('level', 'desc')
                        -> get();

                    $dev_working_time_1 = 0;
                    foreach ($tasks as $task) {
                        DB::table('tasks')
                            ->where('id',$task->id)
                            ->update([
                                'is_processed' => 1
                            ]);
                        $dev_working_time_1 += $task->estimated_duration * ($task->level / $developer->level);
                    }
                }
            }

            $dev_time = number_format($team_average_working_time/45,1);
            return view('homepage',['dev_time'=>$dev_time, 'developers'=>$developers,'team_average_working_time'=>$team_average_working_time]);
    }
}
