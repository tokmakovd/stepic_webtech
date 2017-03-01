pythonpath = '/home/box/web'
bind = '0.0.0.0:8080'
workers =4

def app(env, start_responce):
    body = ''
    for line in env['QUERY_STRING'].split('&'):
        body = body + line +'\n'

    status = '200 OK'
    headers = [
        ('Content-type', 'text/plain')
    ]
    start_responce(status, headers)
    return [body]


