@extends('master')

@section('title')
    {{setting('contact.title')}}
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">

            <!-- Wrapper container -->
            <div class="container py-4">
                @if ($message = Session::get('success'))
                    <div class="alert alert-success alert-block text-center">
                        <strong>{{ $message }}</strong>
                    </div>
                @endif

                <h1 class="text-center">Welcome to our contact</h1>
                <!-- Bootstrap 5 starter form -->
                <form action="{{ url('/contact') }}" method="POST">
                    @csrf
                    <!-- Email address input -->
                    <div class="mb-3">
                        <label class="form-label" for="emailAddress">Email Address</label>
                        <input class="form-control" id="emailAddress" type="email" placeholder="Email Address"
                            data-sb-validations="required, email" name="email" />
                    </div>
                    <!-- Name input -->
                    <div class="mb-3">
                        <label class="form-label" for="object">Object</label>
                        <input class="form-control" id="object" type="text" placeholder="object" name="object" />
                    </div>
                    <!-- Message input -->
                    <div class="mb-3">
                        <label class="form-label" for="message">Message</label>
                        <textarea class="form-control" id="message" type="text" placeholder="Message" name="message"
                            style="height: 10rem;"></textarea>
                    </div>
                    <div class="d-grid">
                        <button class="btn btn-primary btn-lg" type="submit">Submit</button>
                    </div>
                </form>

            </div>


        </div>
    </div>
    
@endsection
