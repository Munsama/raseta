<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\UpdateProfileRequest;

class ProfileController extends Controller
{
    //
    public function edit_profile(Request $request){
        
        return view('edit_profile', [
            'user' => $request->user()
        ]);
    }
    /**
 * Update user's profile
 *
 * @param  UpdateProfileRequest $request
 * @return Renderable
 */
public function update_profile(UpdateProfileRequest $request)
{
    $request->user()->update(
        $request->all()
    );

    return redirect()->route('edit_profile');
}

     /**
     * Change the current password
     * @param Request $request
     * @return Renderable
     */

    
}
