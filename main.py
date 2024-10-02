import os
import pkg_resources


installed_packages = pkg_resources.working_set
installed_packages_list = sorted(
    ["%s==%s" % (i.key, i.version) for i in installed_packages]
)

print(
    {
        "current_version": os.getenv("CURRENT_VERSION"),
        "dependencies": installed_packages_list
    }
)