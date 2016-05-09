TEMPLATE = lib

load(ubuntu-click)

filetypes = qml png svg js qmltheme jpg qmlproject desktop wav so

OTHER_FILES = filetypes

for(filetype, filetypes) {
  OTHER_FILES += *.$$filetype
}

other_files.path = $${UBUNTU_CLICK_PLUGIN_PATH}
other_files.files = $$OTHER_FILES

INSTALLS += other_files

message(The project1 will be installed in $${UBUNTU_CLICK_PLUGIN_PATH})

