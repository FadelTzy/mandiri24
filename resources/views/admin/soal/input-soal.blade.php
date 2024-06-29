<div class="card" id="input">
    <div class="card-body">
        <div class=" d-sm-flex align-items-center justify-content-between">
            <h5 > <i class="far fa-edit" id="status">Tambah Soal</i> </h5>

        </div>
        <hr>

        <form id="form">
            <input type="hidden" name="kode" id="kode">
            <input type="hidden" name="kode_kursus"  id="kode_kursus" value="{{$course['kode_kursus']}}" >
            
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Soal</label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <textarea class="form-control mb-2" id="soal" name="soal"
                                rows="3"></textarea>

                        </div>
                        <div class="col-md-5">
                            <div class="custom-file mb-2">
                                <input type="file" class="custom-file-input" name="file_soal" id="file_soal"  accept=".jpg,.jpeg,.png">
                                <label class="custom-file-label custom-file-label-cs"
                                    for="file_soal">Pilih
                                    gambar...</label>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Option (<span
                        class="opsi">A</span>)</label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <textarea class="form-control mb-2" id="opsi_1" name="opsi_1"
                                rows="3"></textarea>

                        </div>
                        <div class="col-md-5">
                            <div class="custom-file mb-2">
                                <input type="file" class="custom-file-input" id="file_1" name="file_1"  accept=".jpg,.jpeg,.png" >
                                <label class="custom-file-label custom-file-label-cs"
                                    for="file_1">Pilih
                                    gambar...</label>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group mb-3  ">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Poin jawaban</label>
                                </div>
                                <input type="text" class="form-control" name="poin_1" id="poin_1" placeholder="10" >
                              </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Option (<span
                        class="opsi">B</span>)</label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <textarea class="form-control mb-2" id="opsi_2" name="opsi_2"
                                rows="3"></textarea>

                        </div>
                        <div class="col-md-5">
                            <div class="custom-file mb-2">
                                <input type="file" class="custom-file-input" id="file_2" name="file_2"  accept=".jpg,.jpeg,.png" >
                                <label class="custom-file-label custom-file-label-cs"
                                    for="file_2">Pilih
                                    gambar...</label>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Poin jawaban</label>
                                </div>
                                <input type="text" class="form-control" placeholder="10" name="poin_2" id="poin_2" >
                              </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Option (<span
                        class="opsi">C</span>)</label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <textarea class="form-control mb-2" id="opsi_3" name="opsi_3"
                                rows="3"></textarea>

                        </div>
                        <div class="col-md-5">
                            <div class="custom-file mb-2">
                                <input type="file" class="custom-file-input" id="file_3" name="file_3"  accept=".jpg,.jpeg,.png" >
                                <label class="custom-file-label custom-file-label-cs"
                                    for="file_3">Pilih
                                    gambar...</label>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Poin jawaban</label>
                                </div>
                                <input type="text" class="form-control" placeholder="10" id="poin_3" name="poin_3" >
                              </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Option (<span
                        class="opsi">D</span>)</label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <textarea class="form-control mb-2" id="opsi_4" name="opsi_4"
                                rows="3"></textarea>

                        </div>
                        <div class="col-md-5">
                            <div class="custom-file mb-2">
                                <input type="file" class="custom-file-input" id="file_4" name="file_4"   accept=".jpg,.jpeg,.png">
                                <label class="custom-file-label custom-file-label-cs"
                                    for="file_4">Pilih
                                    gambar...</label>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Poin jawaban</label>
                                </div>
                                <input type="text" class="form-control" placeholder="10" id="poin_4" name="poin_4" >
                              </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Option (<span
                        class="opsi">E</span>)</label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <textarea class="form-control mb-2" id="opsi_5" name="opsi_5"
                                rows="3"></textarea>

                        </div>
                        <div class="col-md-5">
                            <div class="custom-file mb-2">
                                <input type="file" class="custom-file-input" id="file_5"  name="file_5"  accept=".jpg,.jpeg,.png">
                                <label class="custom-file-label custom-file-label-cs"
                                    for="file_5">Pilih
                                    gambar...</label>

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Poin jawaban</label>
                                </div>
                                <input type="text" class="form-control" placeholder="10" name="poin_5" id="poin_5" >
                              </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">Kunci jawaban <i
                        class="fas fa-check opsi"></i></label>
                <div class="col-sm-3">
                    <select class="custom-select mr-sm-2" id="current_answer" name="current_answer">
                        <option value="" selected>Pilih Jawaban</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                        <option value="E">E</option>
                    </select>
                </div>
            </div>
        </form>
        <div class="row pt-5">
            <div class="col-md-2">
                <button   onclick="batal(); return false;" id="batal"  class="btn btn-amber btn-sm btn-block"><i class="far fa-arrow-alt-circle-left mr-2"></i> Batal</button>
            </div>
            <div class="col-md-2">
                <button onclick="simpan(); return false;" id="simpan" type="button" class="btn btn-info btn-sm btn-block">Simpan</button>
            </div>
        </div>

    </div>
</div>