angular.module('rapid-build').constant 'BUILD_COMMON_TASKS', [
	label: 'Common Tasks'
	icon:  'fa-tasks'
	info:  'all builds do the following tasks first'
	html:
		class:
			items2: info: 'parens', list: 'ordered'
			items3: info: 'sep'
		headings: items2: false
	items: [
		label: 'Install bower components.'
		info:  'if they aren\'t installed via client
				<a href="/getting-started#directory-structure">bower.json</a>'
	,
		label: 'Copy src files to the dist directory:'
		items: [
			label: 'css'
			info:  '@dir client'
		,
			label: 'images'
			info:  '@dir client'
		,
			label: 'js'
			info:  '@dir client and server'
		,
			label: 'html'
			info:  '@dir client'
		,
			label: 'libs'
			info:  '@dir client
					(everything in the <a href="/getting-started#directory-structure">libs</a>
					directory)'
		,
			label: 'bower components'
			info:  '@dir client
					(files listed in
					<a target="_blank" href="https://github.com/bower/spec/blob/master/json.md">bower.json</a>
					main property)'
		,
			label: 'node modules'
			info:  '@dir server
					(node_modules directory installed via server
					<a href="/getting-started#directory-structure">package.json</a>)'
		]
	,
		label: 'Compile src files to the dist directory:'
		items: [
			label: 'coffee &#8594; js'
			info:  '@dir client and server'
		,
			label: '<a target="_blank" href="http://babeljs.io/">es6</a> &#8594; js'
			info:  '@dir client and server'
		,
			label: '<a href="/build-options#compile.typescript[client|server].enable">typescript</a> &#8594; js'
			info:  '@dir client and server'
		,
			label: 'less &#8594; css'
			info:  '@dir client'
		,
			label: 'sass &#8594; css'
			info:  '@dir client'
		]
	]
]



