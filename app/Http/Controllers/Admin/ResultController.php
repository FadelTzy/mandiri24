<?php

namespace App\Http\Controllers\Admin;

use App\Answer;
use App\Hasil;
use App\Http\Controllers\Controller;
use App\Question;
use App\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ResultController extends Controller
{


    public function proses_minat()
    {
        $data = Answer::where('kode_kursus', 'minat')->get();
        foreach ($data as $data) {
            $score = array();
            #exlope jawaban berdasarkan ','
            $ex =  explode(",", $data->current_answer);
            foreach ($ex as $s) {
                if ($s != '') {
                    #exlope jawaban berdasarkan ':'
                    $lj = explode(":", $s);

                    # id soal
                    $list_soal = $lj[0];
                    $list_jawaban = $lj[1];

                    $retrieve_soal = Question::where('id', $list_soal)->first();
                    if ($list_jawaban == 'A') {
                        $score[] = $retrieve_soal['file_soal'] . ',';
                    } elseif ($list_jawaban == 'B') {
                        $score[] = $retrieve_soal['opsi_1'] . ',';
                    } elseif ($list_jawaban == 'C') {
                        $score[] = $retrieve_soal['file_1'] . ',';
                    } elseif ($list_jawaban == 'D') {
                        $score[] = $retrieve_soal['poin_1'] . ',';
                    }
                }
            }

            #simpan => update
            Answer::where('id', $data->id)
                ->update([
                    'score' => round(array_sum($score)),
                ]);
        }

        $return = array(
            'status'    => true,
            'message'    => 'Berhasil',
        );


        return response()->json($return);
    }

    public function proses_kepribadian()
    {
        $data = Answer::where('kode_kursus', 'kep1')
            ->orWhere('kode_kursus', 'kep2')
            ->orWhere('kode_kursus', 'kep3')
            ->orWhere('kode_kursus', 'kep4')
            ->orderBy('username')
            ->get();



        foreach ($data as $data) {
            $r = array();
            $i = array();
            $a = array();
            $s = array();
            $e = array();
            $c = array();
            // $score = array();
            #exlope jawaban berdasarkan ','
            $ex =  explode(",", $data->current_answer);
            foreach ($ex as $ex) {
                if ($ex != '') {
                    #exlope jawaban berdasarkan ':'
                    $lj = explode(":", $ex);

                    # id soal
                    $list_soal = $lj[0];
                    $list_jawaban = $lj[1];

                    $retrieve_soal = Question::where('id', $list_soal)->first();

                    if ($retrieve_soal['kode_kursus'] == 'kep1') {
                        // kepribadian 1
                        if ($retrieve_soal['opsi_2'] == 'r') {


                            if ($list_jawaban == 'A') {
                                $r[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $r[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $r[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $r[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'i') {

                            if ($list_jawaban == 'A') {
                                $i[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $i[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $i[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $i[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'a') {

                            if ($list_jawaban == 'A') {
                                $a[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $a[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $a[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $a[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 's') {

                            if ($list_jawaban == 'A') {
                                $s[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $s[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $s[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $s[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'e') {

                            if ($list_jawaban == 'A') {
                                $e[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $e[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $e[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $e[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'c') {

                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        }
                    } elseif ($retrieve_soal['kode_kursus'] == 'kep2') {
                        if ($retrieve_soal['opsi_2'] == 'r') {


                            if ($list_jawaban == 'A') {
                                $r[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $r[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $r[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $r[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'i') {

                            if ($list_jawaban == 'A') {
                                $i[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $i[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $i[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $i[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'a') {

                            if ($list_jawaban == 'A') {
                                $a[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $a[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $a[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $a[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 's') {

                            if ($list_jawaban == 'A') {
                                $s[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $s[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $s[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $s[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'e') {

                            if ($list_jawaban == 'A') {
                                $e[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $e[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $e[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $e[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'c') {

                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        }
                    } elseif ($retrieve_soal['kode_kursus'] == 'kep3') {
                        // kepribadian 3

                        if ($retrieve_soal['opsi3'] == 2) {
                            if ($retrieve_soal['soal'] == 'Keterampilan tangan') {
                                if ($list_jawaban == 'A') {
                                    $r[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $r[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $r[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $r[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $r[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $r[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $r[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan matematik') {
                                if ($list_jawaban == 'A') {
                                    $i[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $i[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $i[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $i[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $i[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $i[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $i[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Memahami orang lain') {
                                if ($list_jawaban == 'A') {
                                    $a[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $a[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $a[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $a[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $a[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $a[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $a[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan musik') {
                                if ($list_jawaban == 'A') {
                                    $s[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $s[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $s[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $s[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $s[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $s[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $s[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Keterampilan manajerial') {
                                if ($list_jawaban == 'A') {
                                    $e[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $e[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $e[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $e[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $e[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $e[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $e[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Keterampilan kerja') {
                                if ($list_jawaban == 'A') {
                                    $c[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $c[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $c[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $c[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $c[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $c[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $c[] = $retrieve_soal['poin_2'] . ',';
                                }
                            }
                        } else if ($retrieve_soal['opsi3'] == 1) {
                            if ($retrieve_soal['soal'] == 'Kemampuan mekanik') {
                                if ($list_jawaban == 'A') {
                                    $r[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $r[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $r[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $r[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $r[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $r[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $r[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan ilmiah') {
                                if ($list_jawaban == 'A') {
                                    $i[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $i[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $i[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $i[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $i[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $i[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $i[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan artistik') {
                                if ($list_jawaban == 'A') {
                                    $a[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $a[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $a[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $a[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $a[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $a[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $a[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan mengajar') {
                                if ($list_jawaban == 'A') {
                                    $s[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $s[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $s[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $s[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $s[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $s[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $s[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan menjual') {
                                if ($list_jawaban == 'A') {
                                    $e[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $e[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $e[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $e[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $e[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $e[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $e[] = $retrieve_soal['poin_2'] . ',';
                                }
                            } else if ($retrieve_soal['soal'] == 'Kemampuan mengetik') {
                                if ($list_jawaban == 'A') {
                                    $c[] = $retrieve_soal['file_soal'] . ',';
                                } elseif ($list_jawaban == 'B') {
                                    $c[] = $retrieve_soal['opsi_1'] . ',';
                                } elseif ($list_jawaban == 'C') {
                                    $c[] = $retrieve_soal['file_1'] . ',';
                                } elseif ($list_jawaban == 'D') {
                                    $c[] = $retrieve_soal['poin_1'] . ',';
                                } elseif ($list_jawaban == 'E') {
                                    $c[] = $retrieve_soal['opsi_2'] . ',';
                                } elseif ($list_jawaban == 'F') {
                                    $c[] = $retrieve_soal['file_2'] . ',';
                                } elseif ($list_jawaban == 'G') {
                                    $c[] = $retrieve_soal['poin_2'] . ',';
                                }
                            }
                        }
                    } elseif ($retrieve_soal['kode_kursus'] == 'kep4') {
                        // kepribadian 4
                        if ($retrieve_soal['opsi_2'] == 'r') {
                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'i') {
                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'a') {
                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 's') {
                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'e') {
                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        } elseif ($retrieve_soal['opsi_2'] == 'c') {
                            if ($list_jawaban == 'A') {
                                $c[] = $retrieve_soal['file_soal'] . ',';
                            } elseif ($list_jawaban == 'B') {
                                $c[] = $retrieve_soal['opsi_1'] . ',';
                            } elseif ($list_jawaban == 'C') {
                                $c[] = $retrieve_soal['file_1'] . ',';
                            } elseif ($list_jawaban == 'D') {
                                $c[] = $retrieve_soal['poin_1'] . ',';
                            }
                        }
                    }
                }
            }

            #simpan
            $cek_j = Result::where('username', $data->username)->first();
            if (!$cek_j) {
                Result::create([
                    'username' => $data->username,
                    'r' => round(array_sum($r)),
                    'i' => round(array_sum($i)),
                    'a' => round(array_sum($a)),
                    's' => round(array_sum($s)),
                    'e' => round(array_sum($e)),
                    'c' => round(array_sum($c)),
                ]);
            }



            // $r = array();
            // $i = array();
            // $a = array();
            // $s = array();
            // $e = array();
            // $c = array();
        }

        $return = array(
            'status'    => true,
            'message'    => 'Berhasil',
        );



        return response()->json($return);
    }
    public function proses_akademik()
    {
       
            $data = Answer::where('kode_kursus', '<>', 'minat')
                ->where('kode_kursus', '<>', 'kep1')
                ->where('kode_kursus', '<>', 'kep2')
                ->where('kode_kursus', '<>', 'kep3')
                ->where('kode_kursus', '<>', 'kep4')
                ->get();
    
            foreach ($data as $data) {
                $score = array();
                #exlope jawaban berdasarkan ','
                $ex =  explode(",", $data->current_answer);
                foreach ($ex as $s) {
                    if ($s != '') {
                        #exlope jawaban berdasarkan ':'
                        $lj = explode(":", $s);
    
                        # id soal
                        $list_soal = $lj[0];
                        $list_jawaban = $lj[1];
    
                        $retrieve_soal = Question::where('id', $list_soal)->first();
    
                        if ($retrieve_soal['current_answer'] == $list_jawaban) {
                            # benar
                            $score[] = 1 . ',';
                        }
                    }
                }
    
                #simpan
                Answer::where('id', $data->id)
                    ->update([
                        'score' => round(array_sum($score)),
                    ]);
            }
    
            $return = array(
                'status'    => true,
                'message'    => 'Berhasil',
            );
    
    
            return response()->json($return);
        }
    
    





    // ::where('delivered', '<>', 1)->where('invoiced', '<>', 1)->get();
}
