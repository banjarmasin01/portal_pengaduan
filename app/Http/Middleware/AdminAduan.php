<?php

namespace App\Http\Middleware;

use Closure;

class AdminAduan
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->is('login'))
        {
            if ($request->session()->has('level')) {
                return redirect('/admin/home');                
            } 
            return $next($request);            
        } else 
        {
            if (!$request->session()->has('level')) {
                return redirect('login');
            } 
            return $next($request);        
        }
    }
}
