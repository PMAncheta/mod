<?php

namespace App\Http\Controllers\Admin;
use App\Models\Cadets;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CadetController extends Controller
{
    public function index()
    {
        $cadet = Cadets::all();
        return view('admin.cadets')->with('cadet',$cadet);
    }

    public function add()
    {
        $cadet = Cadets::all();
        return view('admin.cadets.add')->with('cadet', $cadet);
    }

    public function store(Request $request)
    {
        $cadet = new Cadets;

        $cadet->afpsn = $request->input('afpsn');
        $cadet->servid = $request->input('servid');
        $cadet->majid = $request->input('majid');
        $cadet->yrgr = $request->input('yrgr');
        $cadet->oyrgr = $request->input('oyrgr');
        $cadet->lname = $request->input('lname');
        $cadet->fname = $request->input('fname');
        $cadet->aname = $request->input('aname');
        $cadet->mname = $request->input('mname');
        $cadet->initls = $request->input('initls');
        $cadet->gender = $request->input('gender');
        $cadet->bdate = $request->input('bdate');
        $cadet->bplace = $request->input('bplace');
        $cadet->papa = $request->input('papa');
        $cadet->padead = $request->input('padead');
        $cadet->padead = $request->input('mama');
        $cadet->mama = $request->input('madead');
        $cadet->guardian = $request->input('guardian');
        $cadet->addr1 = $request->input('addr1');
        $cadet->addr2 = $request->input('addr2');
        $cadet->zipcode = $request->input('zipcode');
        $cadet->region = $request->input('region');
        $cadet->highsch = $request->input('highsch');
        $cadet->height = $request->input('height');
        $cadet->eescore = $request->input('eescore');
        $cadet->math = $request->input('math');
        $cadet->engl = $request->input('engl');
        $cadet->spma = $request->input('spma');
        $cadet->coy = $request->input('coy');
        $cadet->battalion = $request->input('battalion');
        $cadet->battalion2 = $request->input('battalion2');
        $cadet->cstat = $request->input('cstat');
        $cadet->remarks = $request->input('remarks');
        $cadet->dategrad = $request->input('dategrad');
        $cadet->degree = $request->input('degree');
        $cadet->graduate = $request->input('graduate');
        $cadet->password = $request->input('password');
        $cadet->coybat = $request->input('coybat');

        if($request->hasFile('pix'))
        {
            $destination = 'uploads/profile/'.$cadet->pix;
            if(File::exists($destination))
            {
                File::delete($destination);
            }
            $file = $request->file('pix');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file->move('uploads/profile/', $filename);
            $cadet->pix = $filename;
        }

        $cadet->save();
        return redirect('/cadets')->with('status', 'Data Added for Cadet');
    }

    public function edit($id)
    {
        $cadet = Cadets::findOrFail($id);
        return view('admin.cadets.edit')->with('cadet', $cadet);
    }

    public function update(Request $request, $id)
    {
        $cadet = Cadets::find($id);

        $cadet->afpsn = $request->input('afpsn');
        $cadet->servid = $request->input('servid');
        $cadet->majid = $request->input('majid');
        $cadet->yrgr = $request->input('yrgr');
        $cadet->oyrgr = $request->input('oyrgr');
        $cadet->lname = $request->input('lname');
        $cadet->fname = $request->input('fname');
        $cadet->aname = $request->input('aname');
        $cadet->mname = $request->input('mname');
        $cadet->initls = $request->input('initls');
        $cadet->gender = $request->input('gender');
        $cadet->bdate = $request->input('bdate');
        $cadet->bplace = $request->input('bplace');
        $cadet->papa = $request->input('papa');
        $cadet->padead = $request->input('padead');
        $cadet->mama = $request->input('madead');
        $cadet->guardian = $request->input('guardian');
        $cadet->addr1 = $request->input('addr1');
        $cadet->addr2 = $request->input('addr2');
        $cadet->zipcode = $request->input('zipcode');
        $cadet->region = $request->input('region');
        $cadet->highsch = $request->input('highsch');
        $cadet->height = $request->input('height');
        $cadet->eescore = $request->input('eescore');
        $cadet->math = $request->input('math');
        $cadet->engl = $request->input('engl');
        $cadet->spma = $request->input('spma');
        $cadet->coy = $request->input('coy');
        $cadet->battalion = $request->input('battalion');
        $cadet->battalion2 = $request->input('battalion2');
        $cadet->cstat = $request->input('cstat');
        $cadet->remarks = $request->input('remarks');
        $cadet->dategrad = $request->input('dategrad');
        $cadet->degree = $request->input('degree');
        $cadet->graduate = $request->input('graduate');
        $cadet->password = $request->input('password');
        $cadet->coybat = $request->input('coybat');

        /*if($request->hasFile('PIX'))
        {
            $destination_path = 'public/storage';
            $image = $request->file('PIX');
            $image_name = $image->getClientOriginalName();
            $path = $request->file('PIX')->storeAs($destination_path, $image_name);

            $cadet['PIX'] = $image_name;
        }*/

         /*if($request->hasfile('PIX')) {
            $destination = 'imgs/uploads' . $cadet->PIX;
            if(File::exists($destination)){
                File::delete($destination);
            }
            $file = $request->file('PIX');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file->move('imgs/uploads/', $filename);
            /*$path = public_path('imgs/uploads');
            $file->move($path, $filename);*/
            /*$file->move('public/imgs/', $filename);*/
            /*$cadet->PIX = $filename;
        }

        /*if($request->has('PIX')) {
            $image = $request->file('PIX');
            $cadet->PIX = $image->getClientOriginalName();
            $image->move(public_path('/imgs/'), $image->getClientOriginalName());
        }*/

        if($request->hasFile('pix'))
        {
            $destination = 'uploads/profile/'.$cadet->pix;
            if(File::exists($destination))
            {
                File::delete($destination);
            }
            $file = $request->file('pix');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file->move('uploads/profile/', $filename);
            $cadet->pix = $filename;
        }

        $cadet->update();
        return redirect('/cadets')->with('status', 'Data has been Updated!');
    }

    /* public function search(){
        $search = $GET['query'];
        $cadet = Cadets::where('title', 'LIKE', '%'.$search.'%')
    } */
}
