@extends('layouts.app')
@section('title')
    Petunjuk dan Tata Tertib
@endsection
@section('content')
<main>

    <div class="d-flex justify-content-between page-title mb-3">
        <h4 class="w-4">Petunjuk dan Tata Tertib</h4>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="alert alert-danger text-center" role="alert">
                        Setiap pelanggaran terhadap <strong>TATA TERTIB UJIAN</strong>, akan mengakibatkan
                        peserta <strong>DIBATALKAN</strong> ujiannya
                    </div>
                    <hr>

                    <ul class="list-custom">
                        <li>
                            <p class="w-5 "> SEBELUM UJIAN BERLANGSUNG</p>
                            <table class="tb-custom">
                                <tbody>
                                    <tr>
                                        <td class="number">
                                            1
                                        </td>
                                        <td>
                                            Peserta ujian harus sudah mengetahui <strong> RUANG UJIAN</strong> dan
                                            <strong>LOKASI UJIAN </strong> sehari sebelum ujian berlangsung
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="number">
                                            2
                                        </td>
                                        <td>
                                            <strong>Peserta harus membawa :</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="tb-custom">
                                <tbody>

                                    <tr>
                                        <td class="number"></td>
                                        <td class="number">
                                            1.1
                                        </td>
                                        <td>
                                            Kartu tanda peserta ujian
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="number"></td>
                                        <td class="number">
                                            1.2
                                        </td>
                                        <td>
                                            Fotocopy Ijazah SMA/SMK/MA atau sederajat dan sudah dilegalisasi atau
                                            surat keterangan sedang kelas XII dari Kepala Sekolah yang dilengkapi
                                            dengan Pasfoto berwarna terbaru yang bersangkutan dan dibubuhi cap
                                            sekolah
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                            <table class="tb-custom">
                                <tbody>
                                    <tr>
                                        <td class="number">
                                            3
                                        </td>
                                        <td>
                                            Peserta dilarang memakai Kaos Oblong (T-Shirt)
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="number">
                                            4
                                        </td>
                                        <td>
                                            Peserta harus bersepatu
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            5
                                        </td>
                                        <td>
                                            Peserta harus datang kelokasi ujian paling lambat 30 menit sebelum
                                            ujian. Jeterlambatan dengan alasan apapun sejak waktu tes dimulai.
                                            Peserta <strong>TIDAK DIPERBOLEHKAN</strong> mengikuti ujian
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            6
                                        </td>
                                        <td>
                                            Peserta tidak diperbolehkan masuk ruang ujian sebelum ada tanda untuk
                                            memasuki ruang ujian
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            7
                                        </td>
                                        <td>
                                            Peserta tidak diperbolehkan membawa daftar logaritma, segala jenis
                                            kalkulator, kertas, buku maupun UTBKatan lain, alat komunikasi seperti
                                            telepon seluler, jam tangan (arloji), kamera, modem, segala jenis alat
                                            elektronik untuk merekam dan sebagainya
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            8
                                        </td>
                                        <td>
                                            Tas, buku dan UTBKatan dalam bentuk apapun dikumpulkan ditempat yang
                                            telah ditentukan
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            9
                                        </td>
                                        <td>
                                            Peserta akan digeledah jika dianggap ada sesuatu hal yang mencurigakan
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            10
                                        </td>
                                        <td>
                                            Peserta harus duduk di tempat yang sudah ditentukan sesuai dengan nomor
                                            peserta dan nomorr meja, tidak boleh menempati tempat duduk lain
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            11
                                        </td>
                                        <td>
                                            Peserta meletakan Kartu Tanda Peserta Ujian dangan foto menghadap keatas
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            12
                                        </td>
                                        <td>
                                            Peserta mengisi daftar hadir dengan menggunakan alat tulis yang telah
                                            disediakan
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            13
                                        </td>
                                        <td>
                                            Peserta yang kehilangan Kartu Tanda Peserta Ujian harus segera
                                            melaporkan pada Pengawas Ujian
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            14
                                        </td>
                                        <td>
                                            Peserta memasukan <strong>Nomor Peserta</strong> dan <strong>5 Digit
                                                dari Nomor Peserta</strong> sebagai <strong>PIN Peserta</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            15
                                        </td>
                                        <td>
                                            Melakukan Tutorial Ujian UTBK MANDIRI sesuai dengan waktu yang telah
                                            disediakan agar peserta mengetahui cara menggunakan aplikasi
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </li>
                        <li >
                            <p class="w-5"> SAAT MENGERJAKAN UJIAN</p>
                            <table class="tb-custom">
                                <tbody>
                                    <tr>
                                        <td class="number">
                                            1
                                        </td>
                                        <td>
                                            Membaca dengan seksama petunjuk mengerjakan ujian yang sudah tersedia
                                            pada aplikasi ujian
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="number">
                                            2
                                        </td>
                                        <td>
                                            Mengecek kesesuaian identitas yang tampil di layar perangkat dan bila
                                            sesuai klik Mulai Ujian
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            3
                                        </td>
                                        <td>
                                            Memasukan Token pada isian <strong>Token Ujian</strong>. Token ujian
                                            akan diberikan/diinformasikan kepada peserta oleh Pengawas Ujian sesaat
                                            sebelum ujian dimulai
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            4
                                        </td>
                                        <td>
                                            Mengerjakan soal sesuai dengan lama waktu pengerjaan =.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            5
                                        </td>
                                        <td>
                                            Menjawab butir soal dengan cara memilih /meng-klik opsi jawaban
                                            menggunakan mouse.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            6
                                        </td>
                                        <td>
                                            Peserta dapat mengubah pilihan jawaban dengan cara memilih/meng-klik
                                            pilihan jawaban lain yang dianggap benar. Jawaban peserta otomatis akan
                                            berganti dengan pilihan jawaban yang terakhir
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            7
                                        </td>
                                        <td>
                                            Peserta dapat megidentifikasi kelengkapan jawaban pada daftar soal di
                                            sisi kiri layar monitor. Soal-soal yang belum dijawab ditandai dengan
                                            kotak warna <span class=" badge badge-csw">Putih</span> dan
                                            soal-soal yang
                                            sudah dikerjakan ditandai dengan kotak warna <span
                                                class="badge  badge-csb">Biru</span>.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                            8
                                        </td>
                                        <td>
                                            <strong>Selama ujian berlangsung, peserta DILARANG :</strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="tb-custom">
                                <tbody>
                                    <tr>
                                        <td class="number">

                                        </td>
                                        <td class="number">
                                            8.1
                                        </td>
                                        <td>
                                            Menanyakan jawaban soal kepada siapapun.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">

                                        </td>
                                        <td class="number">
                                            8.2
                                        </td>
                                        <td>
                                            Bekerjasama atau berkomunikasi (berbicara) dengan peserta lain.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">

                                        </td>
                                        <td class="number">
                                            8.3
                                        </td>
                                        <td>
                                            Memberi atau menerima bantuan dalam menjawab soal ujian
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">

                                        </td>
                                        <td class="number">
                                            8.4
                                        </td>
                                        <td>
                                            Memperlihatkan pekerjaan/jawaban sendiri kepada peserta lain atau
                                            melihat pekerjaan/jawaban peserta lain
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                        </td>
                                        <td class="number">
                                            8.5
                                        </td>
                                        <td>
                                            Meninggalkan ruang ujian selama ujian berlangsung, kecuali seizin
                                            pengawas ujian
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                        </td>
                                        <td class="number">
                                            8.6
                                        </td>
                                        <td>
                                            Mengganti atau digantikan orang lain
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="number">
                                        </td>
                                        <td class="number">
                                            8.7
                                        </td>
                                        <td>
                                            Merekam soal ujian dengan alat elektronika apapun
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                            <table class="tb-custom">
                                <tbody>
                                    <tr>

                                        <td class="number">
                                            9
                                        </td>
                                        <td>
                                            Aplikasi UTBK MANDIRI akan berhenti secara otomatis ketika waktu tes
                                            berakhir dan peserta wajib klik tombol "OK"
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </li>
                        <li>
                            <p class="w-5"> SELAMA UJIAN BERLANGSUNG</p>
                            <table class="tb-custom">
                                <tbody>
                                    <tr>

                                        <td class="number">
                                            1
                                        </td>
                                        <td>
                                            Peserta UTBK MANDIRI meninggalkan ruang ujian pada waktu yang bersamaan
                                            mengikuti instruksi panitia.
                                        </td>
                                    </tr>
                                    <tr>

                                        <td class="number">
                                            2
                                        </td>
                                        <td>
                                            Peserta UTBK MANDIRI hanya dapat meninggalkan ruang ujian dengan izin
                                            dan
                                            pengawalan dari pengawas UTBK MANDIRI
                                        </td>
                                    </tr>
                                    <tr>

                                        <td class="number">
                                            3
                                        </td>
                                        <td>
                                            Peserta yang meninggalkan ruangan setelah memasukan <strong>Token
                                                Ujian</strong> dan karena satu dan lain hal tidak kembali lagi
                                            hingga waktu ujian berakhir, dinyatakan telah selesai menempu ujian UTBK
                                            MANDIRI
                                        </td>
                                    </tr>
                                    <tr>

                                        <td class="number">
                                            4
                                        </td>
                                        <td>
                                            Peserta UTBK MANDIRI yang telah selesai mengerjakan soal sebelum waktu
                                            ujian selesai, tidak diperbolehkan meninggalkan ruangan ujian
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </li>

                    </ul>

                </div>

            </div>
        </div>

    </div>
    <!-- Card -->

</main>

@endsection

@push('addon-script')
    
@endpush