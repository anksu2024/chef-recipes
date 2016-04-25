# Chef script to install the dse version specified on the template file
package "dse-full" do
	only_if{
		File.exist?(node["datastax"]["repo"]["path"])
	}
	version node["datastax"]["latest"]["version"]
	action :upgrade
end
