function! BvscFormatHtml()
	silent! set ft=html
	silent! set tw=80
	silent! %s/<strong>/<strong style="color:#ac4399;font-family:Verdana,Arial,Helvetica,sans-serif;">/g
	silent! %s/<p>/<p style="color:#ac4399;font-family:Verdana,Arial,Helvetica,sans-serif;">/g
	silent! %s/<h1>/<h1 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.4em;background:#ac4399;color:#ffffff;padding:10px;">/g
	silent! %s/<h2>/<h2 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.2em;color:#ac4399;">/g
	silent! %s/<h3>/<h3 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.1em;color:#ac4399;">/g
	silent! %s/<li>/<li style="font-family:Verdana,Arial,Helvetica,sans-serif;color:#ac4399;">/g
	silent! normal gg=G
	silent! normal gg
endfunction

command! BvscFmt call BvscFormatHtml()

function! BvscFormatHtmlBlue()
	silent! set ft=html
	silent! set tw=80
	silent! %s/<strong>/<strong style="color: #1f9631;font-family:Verdana,Arial,Helvetica,sans-serif;">/g
	silent! %s/<p>/<p style="color:#1f9631;font-family:Verdana,Arial,Helvetica,sans-serif;">/g
	silent! %s/<h1>/<h1 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.4em;color:#34aacd;padding:10px;">/g
	silent! %s/<h2>/<h2 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.2em;color:#34aacd;">/g
	silent! %s/<h3>/<h3 style="font-family:Verdana,Arial,Helvetica,sans-serif;font-size:1.1em;color:#34aacd;">/g
	silent! %s/<li>/<li style="font-family:Verdana,Arial,Helvetica,sans-serif;color: #1f9631;">/g
	silent! %s/<table>/<table style="font-family:Verdana,Arial,Helvetica,sans-serif;color: #1f9631;">/g
	silent! %s/<tr>/<tr style="font-family:Verdana,Arial,Helvetica,sans-serif;color: #1f9631;">/g
	silent! %s/<td>/<td style="font-family:Verdana,Arial,Helvetica,sans-serif;color: #1f9631;">/g
	silent! normal gg=G
	silent! normal gg
endfunction

command! BvscFmtB call BvscFormatHtmlBlue()
