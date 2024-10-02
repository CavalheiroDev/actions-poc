import os
import sys

import pkg_resources

my_libs = ["pandas", "pydantic", "SQLAlchemy", "watchtower"]


installed_packages = pkg_resources.working_set
installed_packages_list = [i.key for i in installed_packages]

filtered_packages = list(filter(lambda pkg: pkg in my_libs, installed_packages_list))

print(
    {
        "current_version": os.getenv("CURRENT_VERSION"),
        "dependencies": filtered_packages,
    }
)
