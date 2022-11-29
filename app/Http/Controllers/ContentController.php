<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Response;
use File;
use App\Models\Content;

class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if(request()->ajax())
            {
                return datatables()->of(DB::table('contents')->orderby('created_at','desc')->get())
                        ->addIndexColumn()
                        ->addColumn('action', function($data){
                            $button = '<a href="/crud_content/view/'.$data->id.'"> <button type="button" name="view"  id="'.$data->id.'" class="btn btn-warning btn-sm far fa-eye"></button> </a>';
                            $button .= '<a href="/crud_content/edit/'.$data->id.'"> <button type="button" name="edit" id="'.$data->id.'" class="btn btn-primary btn-sm far fa-edit"></button> </a>';
                            $button .= '<button type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger btn-sm far fa-trash-alt"></button>';
                            return $button;
                        })
                        ->rawColumns(['action'])
                        ->make(true);
            }
        return view('admin_content');
    }
    public function index2()
    {
        //
        if(request()->ajax())
            {
                return datatables()->of(DB::table('contents')->orderby('created_at','desc')->get())
                        ->addIndexColumn()
                        ->addColumn('action', function($data){
                            $button = '<a href="/crud_content/view/'.$data->id.'"> <button type="button" name="view"  id="'.$data->id.'" class="btn btn-warning btn-sm far fa-eye"></button> </a>';
                            $button .= '<a href="/crud_content/edit/'.$data->id.'"> <button type="button" name="edit" id="'.$data->id.'" class="btn btn-primary btn-sm far fa-edit"></button> </a>';
                            $button .= '<button type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger btn-sm far fa-trash-alt"></button>';
                            return $button;
                        })
                        ->rawColumns(['action'])
                        ->make(true);
            }
        return view('admin_content');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('add_content');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $rules = array(
            'title'     => 'required',
            'type'      => 'required',
            'content'   => 'required|file',
            
        );
        $error = Validator::make($request->all(), $rules);
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
        //proses content
        $content = $request->file('content');
        $rename = str_replace(' ', '_', $content->getClientOriginalName());
        $nama_content = time()."_".$rename;
                // isi dengan nama folder tempat kemana content diupload
        $tujuan_upload = 'contents';
        $content->move(public_path($tujuan_upload),$nama_content);

        $form_data = array(
            'title'     =>  $request->title,
            'type'      =>  $request->type,
            'content'   =>  $nama_content,
            'shopee'    =>  $request->shopee
        );
        Content::create($form_data);
        return redirect('crud_content')->with(['success' => 'Data berhasil ditambahkan']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $data = DB::table('contents')->where('id',$id)->first();
        return view('view_content', compact('id','data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data = DB::table('contents')->where('id',$id)->first();
        return view('edit_content', compact('id','data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        //
        $nama_content = $request->hidden_content;
        $content = $request->file('content');
            // if (file_exists(public_path($nama_foto =  $content->getClientOriginalName()))) 
            // {
            //     unlink(public_path($nama_foto));
            // }
        if($content != ''){
            $rules = array(
                'title'     => 'required',
                'type'      => 'required',
                'content'   => 'required|file'
            );
            $error = Validator::make($request->all(), $rules);
            if($error->fails()){
                return response()->json(['errors' => $error->errors()->all()]);
            }
            $data = DB::table('contents')->where('id',$request->id)->first();
		    File::delete(public_path('contents/'.$data->content));
		    $rename = str_replace(' ', '_', $content->getClientOriginalName());
            $nama_content = time()."_".$rename;
                    // isi dengan nama folder tempat kemana content diupload
            $tujuan_upload = 'contents';
            $content->move(public_path($tujuan_upload),$nama_content);
        }
        else {
            $rules = array(
                'title'     => 'required',
                'type'      => 'required',
            );
            $error = Validator::make($request->all(), $rules);
            if($error->fails()){
                return response()->json(['errors' => $error->errors()->all()]);
            }
        }
        $form_data = array(
            'title'     =>  $request->title,
            'type'      =>  $request->type,
            'content'   =>  $nama_content,
            'shopee'    =>  $request->shopee
        );
        DB::table('contents')->where('id',$request->id)->update($form_data);
        return  redirect('crud_content')->with(['success' => 'Data berhasil diperbarui']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $data = Content::findOrFail($id);
		    File::delete(public_path('contents/'.$data->content));

            $data = Content::findOrFail($id);
            $data->delete();
    }
}
