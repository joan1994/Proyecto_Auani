@extends('layouts.app')

@section('body-class','product-page')
<!--URL de imagen de fondo https://images.unsplash.com/photo-1423655156442-ccc11daa4e99?crop=entropy&dpr=2&fit=crop&fm=jpg&h=750&ixjsv=2.1.0&ixlib=rb-0.3.5&q=50&w=1450-->
@section('content')
<div class="header header-filter" style="background-image: url('{{ asset ('img/fondo.jpg')}}');">
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div class="main main-raised">
    <div class="container">
        
        <div class="section landing-section">
            <h2 align="center">Editar producto</h2>
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                         @foreach ($errors->all() as $error)
                         <li>{{$error}}</li>
                         @endforeach
                    </ul>

                </div>
            @endif
            <form method="post" action="{{ url('/admin/products/'.$product->id.'/edit') }}">
               
                {{ csrf_field()}}

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group label-floating">
                        <label class="control-label">Nombre del nuevo producto</label>
                        <input type="text" class="form-control" name="name" value="{{ old('name',$product->name)}}">
                    </div>
                </div> 
                <div class="col-sm-6">
                    <div class="form-group label-floating">
                        <label class="control-label">Precio</label>
                        <input type="number" step="0.01" class="form-control" name="price" value="{{ old('price',$product->price)}}">
                    </div>  
                </div>
                </div>
                    <div class="form-group label-floating">
                            <label class="control-label">Tipo de producto</label>
                            <input type="text" class="form-control" name="kind_product" value="{{ old('kind_product',$product->kind_product)}}">
                    </div>
                    
                    <div class="form-group label-floating">
                        <label class="control-label">Descripcion</label>
                        <input type="text" class="form-control" name="description" value="{{ old('description',$product->description)}}">
                    </div>
                   <textarea class="form-control" placeholder="Descripcion extensa" rows="5" name="log_description">{{ old('log_description',$product->log_description)}}</textarea>
                   <button class="btn btn-primary">Guardar cambios</button>
                   <a href="{{ url('/admin/products') }}" class="btn btn-default">Cancelar</a>
                
            </form>

        </div>
    </div>

</div>

@include('includes.footer')

@endsection
