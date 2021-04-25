<div class="row">
                    <div class="card">
                        <div class="card-header">
                            Send SMS message to parent
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('message.store') }}">
                                @csrf
                                <div class="form-group">
                                    <label>messages</label>
                                    <select name="users[]" multiple class="form-control">
                                        @foreach ($parents as $user)
                                        <option>{{ $user->phone}}</option>

                                        @endforeach

                                    </select>
                                    </div>
                                   <div class="form-group">
                                    <label>write your Text</label>
                                    <textarea name="body" class="form-control" rows="3"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Send </button>

                            </form>
                        </div>
                    </div>

 </div>


