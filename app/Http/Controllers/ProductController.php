<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Image;
use App\Models\CsvData;
use Illuminate\Http\Request;
use Storage;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('product.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'     => 'required',
            'category' => 'required',
            'price'    => 'required|regex:/^\d+(\.\d{1,2})?$/'
        ]);
        $product              = new Product;
        $product->name        = $request->name;
        $product->category    = $request->category;
        $product->description = $request->description;
        $product->price       = $request->price;
        $product->other_price = $request->offer_price;
        $product->save();

        if($request->hasfile('images'))
        {
            if (count($request->file('images')) > 2)
            {
                return redirect()->route('product.index')
                ->with('error','Allow only 2 files.');
            } 
        
            foreach ($request->file('images') as $imagefile) {
                $image = new Image;
                $path = $imagefile->store('/images/resource', ['disk' => 'my_files']);
                $image->url = $path;
                $image->product_id = $product->id;
                $image->save();
            }
        }
        return redirect()->route('product.index')
            ->with('success','Product has been created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }


    // Get Import screen to upload CSV
    public function getImport()
    {
        return view('import');
    }

    public function parseImport(Request $request)
    {

        $request->validate([
            'csv_file' => 'required|mimes:csv,txt',
        ]);

        $path = $request->file('csv_file')->getRealPath();
        $data = array_map('str_getcsv', file($path));

        $tetst = array_shift($data);

        $csv_data_file = CsvData::create([
            'csv_filename' => $request->file('csv_file')->getClientOriginalName(),
            'csv_header'   => $request->has('header'),
            'csv_data'     => json_encode($data)
        ]);

        $csv_data = array_map('str_getcsv', file($path));

        return view('import_fields', compact('csv_data', 'csv_data_file'));
    }

    public function processImport(Request $request)
    {
        $data     = CsvData::find($request->csv_data_file_id);
        $csv_data = json_decode($data->csv_data, true);

        foreach ($csv_data as $row) {

            $product              = new Product;
            $product->name        = $row[0];
            $product->category    = $row[1];
            $product->description = $row[2];
            $product->price       = $row[3];
            $product->other_price = !empty($row[4]) ? $row[4] : 0;
            $product->save();
        }

        return redirect()->route('import')
            ->with('success','Product has been created by CSV file.');
    }
}
