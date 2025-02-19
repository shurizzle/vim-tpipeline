func tpipeline#debug#init()
	let s:tpipeline_filepath = tpipeline#get_filepath()
	let s:tpipeline_right_filepath = s:tpipeline_filepath . '-R'
endfunc

" nvim only
func tpipeline#debug#info()
	let left = readfile(s:tpipeline_filepath)
	let right = readfile(s:tpipeline_right_filepath)
	let native = nvim_eval_statusline(g:tpipeline_statusline, #{highlights: 1, use_tabline: g:tpipeline_tabline})
	return #{native_str: native.str, native_highlights: native.highlights, left: left, right: right}
endfunc

call tpipeline#debug#init()
