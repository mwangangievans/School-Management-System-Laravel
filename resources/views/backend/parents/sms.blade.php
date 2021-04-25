<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SMS Portal</title>

    <!-- Styles -->
        <link href="{{ asset('css/allsms.css') }}" rel="stylesheet">

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
        crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <div class="jumbotron">
            @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
            @endif
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
<a href="/parents" class="btn btn-primary">BACK</a>
            <div class="row">
                    <div class="card">
                        <div class="card-header">
                            Send SMS message to parent
                        </div>
                        <div class="card-body">
                            <form method="POST" action="/custom">
                                @csrf
                                <div class="form-group">
                                    <label>Select users to notify</label>
                                    <select name="users[]" multiple class="form-control">
                                        @foreach ($parents as $user)
                                        <option class="optionparent">{{ $user->phone}}</option>

                                        @endforeach

                                    </select>
                                    </div>
                                   <div class="form-group">
                                    <label>Notification Message</label><br>
                                    <textarea name="body" class="textarea" rows="3"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Send Notification</button>

                            </form>
                        </div>
                    </div>

                    </div>
                </div>
            </div>


        </div>
    </div>
</body>

</html>
