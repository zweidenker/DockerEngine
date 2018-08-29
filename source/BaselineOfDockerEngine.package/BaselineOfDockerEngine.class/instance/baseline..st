baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: #OpenAPI with: [ 
				spec 
					repository: 'github://zweidenker/OpenAPI/source';
					loads: 'Client' ].
		spec package: 'DockerEngine-Core' with: [ 
			spec requires: #( 'OpenAPI' ) ] ]