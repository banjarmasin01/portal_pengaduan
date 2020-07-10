@extends('admin.layout.layout')
@section('title') Home @endsection

@section('css-page')
<style>
</style>
@endsection

@section('content')
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <ul class="breadcrumb breadcrumb-style">
            <li>
                <h4 class="page-title">Blank</h4>
            </li>
        </ul>
    </div>
</div>
@endsection

@section('js-page')
<script>
$(document).ready(function(){
    console.log('ready');
})
</script>
@endsection