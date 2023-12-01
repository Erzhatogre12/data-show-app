<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Variabel;
use App\Models\Dimensi;
use App\Models\Indikator;
use App\Models\SubIndikator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class Variabel2Controller extends Controller
{
    public function show(){

        $dimensi = Dimensi::with(['indikator' => function ($query) {
            $query->where('dimensi_id', 2);
        }, 'indikator.sub_indikator'])->get();

        // dd($dimensi);
   
        $variabel = Variabel::select('nama_variabel')->where('dimensi_id', '2')->pluck('nama_variabel')->toArray();
        $nilai = Variabel::select('nilai')->where('dimensi_id', '2')->pluck('nilai')->toArray();

   
        $variabelLink = Variabel::select(['id', 'nama_variabel'])->where('dimensi_id', '2')->get();      

        return view('show2', compact('variabel', 'nilai', 'variabelLink', 'dimensi'));
    }

    public function edit($id)
    {
        $variabels = Variabel::where('dimensi_id', '2')->get();
  

        if (!$variabels) {
            return redirect()->route('show2')->with('error', 'Record not found.');
        }

        return view('edit', compact('variabels'));
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

        return redirect()->route('show2')->with('success', 'Record updated successfully!');
    }
}
