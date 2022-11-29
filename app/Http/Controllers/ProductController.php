<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Response;
use File;
use App\Models\Product;


class ProductController extends Controller
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
                return datatables()
                ->of(DB::table('products')
                ->join('categories', 'products.category_id','=','categories.id_category')
                ->orderby('products.created_at','desc')
                ->get())
                ->addIndexColumn()
                ->addColumn('action', function($data){
                    $button = '<a href="crud_product/view/'.$data->id.')}}"> <button type="button" name="view"  id="'.$data->id.'" class="btn btn-warning btn-sm far fa-eye"></button> </a>';
                    $button .= '<a href="crud_product/edit/'.$data->id.'"> <button type="button" name="edit" id="'.$data->id.'" class="btn btn-primary btn-sm far fa-edit"></button> </a>';
                    $button .= '<button type="button" name="delete" id="'.$data->id.'" class="delete btn btn-danger btn-sm far fa-trash-alt"></button>';
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
            }
        return view('admin_product');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $data = DB::table('categories')->get();
        return view('add_product', compact('data'));
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
            'name'       => 'required',
            'category'   => 'required',
            'price'      => 'required',
            'discount'   => 'required',
            'image'      => 'required|image|max:2048',
            'shopee'     => 'required',
            'lazada'     => 'required'
        );
        $error = Validator::make($request->all(), $rules);
        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }
        //proses image
        $image = $request->file('image');
        $rename = str_replace(' ', '_', $image->getClientOriginalName());
        $nama_image = time()."_".$rename;
                // isi dengan nama folder tempat kemana image diupload
        $tujuan_upload = 'images';
        $image->move(public_path($tujuan_upload),$nama_image);

        $form_data = array(
            'name'          =>  $request->name,
            'category_id'   =>  $request->category,
            'price'         =>  $request->price,
            'discount'      =>  $request->discount,
            'image'         =>  $nama_image,
            'shopee'        =>  $request->shopee,
            'lazada'        =>  $request->lazada
        );
        Product::create($form_data);
        return redirect('crud_product')->with(['success' => 'Data berhasil ditambahkan']);
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
        $data = DB::table('products')
            ->join('categories','products.category_id', '=', 'categories.id_category')
            ->where('products.id',$id)
            ->first();
        return view('view_product', compact('id','data'));
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
        $data = DB::table('products')->where('id',$id)->first();
        $category =DB::table('categories')->get();
        return view('edit_product', compact('id','data', 'category'));
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
        $nama_image = $request->hidden_image;
        $image = $request->file('image');
            // if (file_exists(public_path($nama_foto =  $image->getClientOriginalName())))
            // {
            //     unlink(public_path($nama_foto));
            // }
        if($image != ''){
            $rules = array(
                'name'       => 'required',
                'category'   => 'required',
                'price'      => 'required',
                'discount'   => 'required',
                'image'      => 'required|image|max:2048',
                'shopee'     => 'required',
                'lazada'     => 'required'
            );
            $error = Validator::make($request->all(), $rules);
            if($error->fails()){
                return response()->json(['errors' => $error->errors()->all()]);
            }
            $data = DB::table('products')->where('id',$request->id)->first();
		    File::delete(public_path('images/'.$data->image));
		    $rename = str_replace(' ', '_', $image->getClientOriginalName());
            $nama_image = time()."_".$rename;
                    // isi dengan nama folder tempat kemana image diupload
            $tujuan_upload = 'images';
            $image->move(public_path($tujuan_upload),$nama_image);
        }
        else {
            $rules = array(
                'name'       => 'required',
                'category'   => 'required',
                'price'      => 'required',
                'discount'   => 'required',
                'shopee'     => 'required',
                'lazada'     => 'required'
            );
            $error = Validator::make($request->all(), $rules);
            if($error->fails()){
                return response()->json(['errors' => $error->errors()->all()]);
            }
        }
        $form_data = array(
            'name'       =>  $request->name,
            'category_id'   =>  $request->category,
            'price'      =>  $request->price,
            'discount'   =>  $request->discount,
            'image'      =>  $nama_image,
            'shopee'     =>  $request->shopee,
            'lazada'     =>  $request->lazada
        );
        DB::table('products')->where('id',$request->id)->update($form_data);
        return  redirect('crud_product')->with(['success' => 'Data berhasil diperbarui']);
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
        $data = Product::findOrFail($id);
		    File::delete(public_path('images/'.$data->image));

            $data = Product::findOrFail($id);
            $data->delete();
    }
}
