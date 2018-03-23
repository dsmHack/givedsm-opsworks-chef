# Set up app's custom configuration in the environment.
# See https://forums.aws.amazon.com/thread.jspa?threadID=118107

node[:deploy].each do |application, deploy|
	environment_variables = deploy[:custom_env].to_h.merge(deploy[:environment_variables].to_h)
  
	custom_env_template do
		application application
		deploy deploy
		env environment_variables
	end
  
end
