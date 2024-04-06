fx_version 'cerulean'
game 'gta5'

author '#realramzz'
description 'Dette Script sørger for og tjekke dit inventory, og give dig et politiskilt'
version '1.0.0'

client_scripts {
    'config.lua',
    'client.lua'
}

server_scripts {
    'config.lua',
    'server.lua'
}

files {
    'mp_m_freemode_01_mp_m_politiskilt.meta',
    'mp_f_freemode_01_mp_f_politiskilt.meta'
  }
  
  data_file 'SHOP_PED_APPAREL_META_FILE' 'mp_m_freemode_01_mp_m_politiskilt.meta'
  data_file 'SHOP_PED_APPAREL_META_FILE' 'mp_f_freemode_01_mp_f_politiskilt.meta'

dependencies {
    'qb-core'
}
