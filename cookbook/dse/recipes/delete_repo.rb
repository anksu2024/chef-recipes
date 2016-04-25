# Delete the repository once the installation successful
file node["datastax"]["repo"]["path"] do
        only_if {
                File.exists?(node["datastax"]["repo"]["path"])
        }
        action :delete
end
