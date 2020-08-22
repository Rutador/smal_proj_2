def app(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return [bytes(i + '\n', 'ascii') for i in  env['QUERY_STRING'].split('&')]
