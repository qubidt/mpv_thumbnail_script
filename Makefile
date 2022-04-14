all: mpv_thumbnail_script_server.lua mpv_thumbnail_script_client_osc.lua

mpv_thumbnail_script_server.lua: concat_files.py cat_server.json src/license_blurb.lua src/version.tmpl.lua lib/helpers.lua src/options.lua src/thumbnailer_server.lua
	./concat_files.py -r cat_server.json

mpv_thumbnail_script_client_osc.lua: concat_files.py cat_osc.json src/license_blurb.lua src/version.tmpl.lua lib/helpers.lua lib/sha1.lua src/options.lua src/thumbnailer_shared.lua src/patched_osc.lua
	./concat_files.py -r cat_osc.json

clean:
	rm mpv_thumbnail_script_server.lua mpv_thumbnail_script_client_osc.lua
