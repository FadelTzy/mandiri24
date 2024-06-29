<?php

namespace App\Imports;

use App\Question;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;

class QuestionImport implements ToModel, WithStartRow
{

    protected $kode_kursus;

    public function __construct($kode_kursus)
    {
        $this->kode_kursus = $kode_kursus;
    }
    public function startRow(): int
    {
        return 2;
    }
    public function model(array $row)
    {


        return new Question([
            'kode_kursus' => $this->kode_kursus,
            'soal' => $row[1],
            'file_soal' => $row[2],
            'opsi_1' => $row[3],
            'file_1' => $row[4],
            'poin_1' => $row[5],
            'opsi_2' => $row[6],
            'file_2' => $row[7],
            'poin_2' => $row[8],
            'opsi_3' => $row[9],
            'file_3' => $row[10],
            'poin_3' => $row[11],
            'opsi_4' => $row[12],
            'file_4' => $row[13],
            'poin_4' => $row[14],
            'opsi_5' => $row[15],
            'file_5' => $row[16],
            'poin_5' => $row[17],
            'current_answer' => $row[18]
        ]);
    }
}
