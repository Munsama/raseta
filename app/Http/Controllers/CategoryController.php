<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Validator;
use Response;
use File;
use App\Models\Category;

class CategoryController extends Controller
{
    //
    public function index()
    {
        //
        if(request()->ajax())
            {
                return datatables()->of(DB::table('categories')->orderby('created_at','desc')->get())
                        ->addIndexColumn()
                        ->addColumn('action', function($data){
                            $button = '<button type="button" name="edit" id="'.$data->id_category.'" class="edit btn btn-primary btn-sm far fa-edit"></button>';
                            $button .= '<button type="button" name="delete" id="'.$data->id_category.'" class="delete btn btn-danger btn-sm far fa-trash-alt"></button>';
                            return $button;
                        })
                        ->rawColumns(['action'])
                        ->make(true);
            }
        return view('admin_category');
    }

    public function store(Request $request)
        {
            $rules = array(
                'category_name'          => 'required'
                
            );
            $error = Validator::make($request->all(), $rules);
            if($error->fails())
            {
                return response()->json(['errors' => $error->errors()->all()]);
            }
            $form_data = array(
                'category_name'          =>  $request->category_name

                
            );
            Category::create($form_data);
            return response()->json(['success' => 'Data berhasil ditambahkan.']);
        }

        public function edit($id)
        {
            if(request()->ajax())
            {
                $data = DB::table('categories')
                    ->where('id_category',$id)
                    ->first();
                return response()->json(['data' => $data]);
            }
        }

        public function update(Request $request)
        {
                $rules = array(
                'name'          => 'required'
                );
                $error = Validator::make($request->all(), $rules);
                if($error->fails())
                {
                    return response()->json(['errors' => $error->errors()->all()]);
                }
            $form_data = array(
                'category_name'          =>  $request->category_name
            );
            Category::whereId($request->hidden_id)->update($form_data);
            return response()->json(['success' => 'Data berhasil diubah']);
        }
    
        /**
         * Remove the specified resource from storage.
         *
         * @param  int  $id
         * @return \Illuminate\Http\Response
         */
        public function destroy($id)
        {
            $data = DB::table('categories')
                    ->where('id_category',$id)
                    ->first();
            $data->delete();
        }
}
