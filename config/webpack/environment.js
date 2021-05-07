// This was already here.
const { environment } = require('@rails/webpacker')

// These are the lines you need to add.
const webpack = require('webpack')
	environment.plugins.append('Provide',
	new webpack.ProvidePlugin({
		$: 'jquery',
		jQuery: 'jquery',
		Popper: ['popper.js', 'default']
	})
)

// This was also here already.
module.exports = environment
