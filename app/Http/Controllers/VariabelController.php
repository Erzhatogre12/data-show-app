<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Variabel;
use App\Models\Dimensi;
use App\Models\Indikator;
use App\Models\SubIndikator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class VariabelController extends Controller
{
    public function show($dimensiId = 1){

        $dimensi = Dimensi::with('indikator',  'indikator.sub_indikator')->where('id', $dimensiId)->get();

        // dd($dimensi);
   
        $variabel = Variabel::where('dimensi_id', $dimensiId)->pluck('nama_variabel')->toArray();
        $nilai = Variabel::where('dimensi_id', $dimensiId)->pluck('nilai')->toArray();

   
        $variabelLink = Variabel::select(['id', 'nama_variabel'])->get();      

        return view('show', compact('variabel', 'nilai', 'variabelLink', 'dimensi', 'dimensiId'));
    }

    public function edit($id, $dimensiId)
    {
        $variabels = Variabel::where('dimensi_id', $dimensiId)->get();
  
        if (!$variabels) {
            return redirect()->route('show', ['dimensiId' => $dimensiId])->with('error', 'Record not found.');
        }

        return view('edit', compact('variabels', 'dimensiId'));
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'nilai' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->route('edit', ['id' => $id])
                ->withErrors($validator)
                ->withInput();
        }

        // Update data in the database
        $variabel = Variabel::find($id);
        $variabel->update([
            'nilai' => $request->input('nilai'),
        ]);

        return redirect()->route('show')->with('success', 'Record updated successfully!');
    }
}
