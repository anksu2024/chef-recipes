# Create the datastax repo using the provided template file
template node["datastax"]["repo"]["path"] do
        source "datastax.repo"
        owner "root"
        group "root"
        mode node["datastax"]["file"]["confidential"]["mode"]
        action :create
end
