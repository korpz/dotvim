function! BvscFormatHtml()
	silent! set ft=html
	silent! set tw=80
	silent! %s/<strong>/<strong style="font-color:#666666;font-family:Verdana,Arial,Helvetica,sans-serif;">/g
	silent! %s/<p>/<p style="font-color:#ac4399;font-family:Verdana,Arial,Helvetica,sans-serif;">/g
	silent! %s/<h1>/<h1 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.4em;background:#ac4399;color:#ffffff;padding:10px;">/g
	silent! %s/<h2>/<h2 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.2em;color:#ac4399;">/g
	silent! %s/<h3>/<h3 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.1em;color:#ac4399;">/g
	silent! %s/<li>/<li style="font-family:Verdana,Arial,Helvetica,sans-serif;color:#ac4399;">/g
	silent! normal gg=G
	silent! normal gg
endfunction

command! BvscFmt call BvscFormatHtml()
