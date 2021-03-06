do
local function pre_process(msg) 
local r = get_receiver(msg) 
local MARDONA = 'mardona_mdia:'..msg.to.id
local mardona1 = 'mardona_photo:'..msg.to.id
local mardona2 = 'mardona_audio:'..msg.to.id
local mardona3 = 'mardona_video:'..msg.to.id
local mardona4 = 'mardona_sticker:'..msg.to.id
local mardona5 = 'mardona_file:'..msg.to.id
local mardona6 = 'mardona_gifs:'..msg.to.id
local mardona7 = 'mardona_fwd:'..msg.to.id
local mardona8 = 'mardona_reply:'..msg.to.id
local mardona9 = 'mardona_link:'..msg.to.id 
local mardona10 = 'mardona_emoji:'..msg.to.id 
local mardona11 = 'mardona_badword:'..msg.to.id 
local mardona12 = 'mardona_tag:'..msg.to.id 
local linkGroup = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]") 
local emojiGrouo = msg.text:match("đđđđâēī¸đđđđđđđđđđŗđđđđđđŖđĸđđ­đĒđĨđ°đđđŠđĢđ¨đąđ đĄđ¤đđđđˇđđ´đĩđ˛đđĻđ§đđŋđŽđŦđđđ¯đļđđđđ˛đŗđŽđˇđđļđĻđ§đ¨đŠđ´đĩđąđŧđ¸đēđ¸đģđŊđŧđđŋđšđžđšđēđđđđđŊđŠđĨâ¨đđĢđĨđĸđĻđ§đ¤đ¨đđđđđđđđđââđâđđđđđđđâī¸đđĒđļđđđĢđĒđŦđ­đđđ¯đđđđđđđđ°đđđđŠđđđđđĄđ đĸđđđđđŊđđđđŧđđđđđđđđđđđâ¤ī¸đđđđđđđđđđđđ¤đĨđŦđŖđ­đļđēđąđ­đšđ°đ¸đ¯đ¨đģđˇđŊđŽđđĩđđ´đđđŧđ§đĻđ¤đĨđŖđđđĸđđđđđđđđ đđŦđŗđđđđđđđđđđđđđđđđ˛đĄđđĢđĒđđđŠđžđđ¸đˇđđšđģđēđđđđŋđžđđĩđ´đ˛đŗđ°đąđŧđđđđđđđđđđđđđđđđđđđđđ â­ī¸âī¸âī¸âī¸âĄī¸âī¸âī¸âī¸đđđđđđđđđđđđđđđđģđđđđđđđđđŽđĨđˇđšđŧđŋđđŊđžđģđąâī¸đđđ đĄđēđģđđđđđđđĸđŖâŗâī¸â°âī¸đđđđđđđĄđĻđđđđđđđđŋđŊđ§đŠđ¨đĒđŦđŖđĢđĒđđđ°đ´đĩđˇđļđŗđ¸đ˛đ§đĨđ¤âī¸đŠđ¨đ¯đĢđĒđŦđ­đŽđĻđđđđđđđđđđđđđđâī¸đđâī¸âī¸đđđđđđđđđđđđđđŦđ­đ°đ¨đŦđ¤đ§đŧđĩđļđšđģđēđˇđ¸đžđŽđđ´đī¸đ˛đ¯đđâŊī¸âžī¸đžđąđđŗâŗī¸đĩđ´đđđđŋđđđđŖâī¸đĩđļđŧđēđģđ¸đšđˇđ´đđđđđđđđ¤đąđŖđĨđđđđđ˛đĸđĄđŗđđŠđŽđĻđ¨đ§đđ°đĒđĢđŦđ­đ¯đđđđđđđđđđđđđđ đđđŊđ đĄđĢđĸđŖđĨđĻđĒđŠđ¨đâĒī¸đŦđ¤đđđ¯đ°âēī¸đ­đŧđžđģđđđđŊđđ đĄâ˛ī¸đĸđĸâĩī¸đ¤đŖâī¸đâī¸đēđđđđđđđđđđđđđđđđđđđđđđđđ¨đđđđđđ˛đĄđđ đđđđĢđĻđĨâ ī¸đ§đ°âŊī¸đŽđ°â¨ī¸đŋđĒđ­đđŠđ¯đĩđ°đˇđŠđĒđ¨đŗđēđ¸đĢđˇđĒđ¸đŽđšđˇđēđŦđ§1âŖ2âŖ3âŖ4âŖ5âŖ6âŖ7âŖ8âŖ9âŖ0âŖđđĸ#âŖđŖâŦī¸âŦī¸âŦī¸âĄī¸đ đĄđ¤âī¸âī¸âī¸âī¸âī¸âī¸đâī¸âļī¸đŧđŊâŠī¸âĒī¸âšī¸âĒâŠâĢâŦâ¤ĩī¸â¤´ī¸đđđđđđđđđđļđĻđđ¯ī¸đŗđĩđ´đ˛đđšđēđļđī¸đģđšđēđŧđžđ°đŽđŋī¸âŋī¸đ­đˇđ¸đâī¸đđđđđãī¸ãī¸đđđđĢđđĩđ¯đąđŗđˇđ¸âī¸âŗī¸âī¸âââ´ī¸đđđŗđ´đ°đąđđžđ âŋâģī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âđ¯đ§đšđ˛đąÂŠÂŽâĸââŧī¸âī¸âī¸ââââ­ī¸đđđđđđđđ§đđđđđđđđđđ đđđđđđđĄđĸđŖđ¤đĨđĻâī¸ââââ ī¸âĨī¸âŖī¸âĻī¸đŽđ¯âī¸âī¸đđâ°ã°ãŊī¸đąâŧī¸âģī¸âžī¸âŊī¸âĒī¸âĢī¸đēđ˛đŗâĢī¸âĒī¸đ´đĩđģâŦī¸âŦī¸đļđˇđ¸đšđđđđâēī¸đđđđđđđđđđŗđđđđđđŖđĸđđ­đĒđĨđ°đđđŠđĢđ¨đąđ đĄđ¤đđđđˇđđ´đĩđ˛đđĻđ§đđŋđŽđŦđđđ¯đļđđđđ˛đŗđŽđˇđđļđĻđ§đ¨đŠđ´đĩđąđŧđ¸đēđ¸đģđŊđŧđđŋđšđžđšđēđđđđđŊđŠđĨâ¨đđĢđĨđĸđĻđ§đ¤đ¨đđđđđđđđđââđâđđđđđđđâī¸đđĒđļđđđđđđâēī¸đđđđđđđđđđŗđđđđđđŖđĸđđ­đĒđĨđ°đđđŠđĢđ¨đąđ đĄđ¤đđđđˇđđ´đĩđ˛đđĻđ§đđŋđŽđŦđđđ¯đļđđđđ˛đŗđŽđˇđđļđĻđ§đ¨đŠđ´đĩđąđŧđ¸đēđ¸đģđŊđŧđđŋđšđžđšđēđđđđđŊđŠđĨâ¨đđĢđĨđĸđĻđ§đ¤đ¨đđđđđđđđđââđâđđđđđđđâī¸đđĒđļđđđĢđĒđŦđ­đđđ¯đđđđđđđđ°đđđđŠđđđđđĄđ đĸđđđđđŊđđđđŧđđđđđđđđđđđâ¤ī¸đđđđđđđđđđđđ¤đĨđŦđŖđ­đļđēđąđ­đšđ°đ¸đ¯đ¨đģđˇđŊđŽđđĩđđ´đđđŧđ§đĻđ¤đĨđŖđđđĸđđđđđđđđ đđŦđŗđđđđđđđđđđđđđđđđ˛đĄđđĢđĒđđđŠđžđđ¸đˇđđšđģđēđđđđŋđžđđĩđ´đ˛đŗđ°đąđŧđđđđđđđđđđđđđđđđđđđđđ â­ī¸âī¸âī¸âī¸âĄī¸âī¸âī¸âī¸đđđđđđđđđđđđđđđđģđđđđđđđđđŽđĨđˇđšđŧđŋđđŊđžđģđąâī¸đđđ đĄđēđģđđđđđđđĸđŖâŗâī¸â°âī¸đđđđđđđĄđĻđđđđđđđđŋđŊđ§đŠđ¨đĒđŦđŖđĢđĒđđđ°đ´đĩđˇđļđŗđ¸đ˛đ§đĨđ¤âī¸đŠđ¨đ¯đĢđĒđŦđ­đŽđĻđđđđđđđđđđđđđđđđđđđđđđŦđ­đ°đ¨đŦđ¤đ§đŧđĩđļđšđģđēđˇđ¸đžđŽđđ´đ1¤7ī¸đ˛đ¯đđâŊī¸âžī¸đžđąđđŗâŗī¸đĩđ´đđđđŋđđđđŖâī¸đĩđļđŧđēđģđ¸đšđˇđ´đđđđđđđđ¤đąđŖđĨđđđđđ˛đĸđĄđŗđđŠđŽđĻđ¨đ§đđ°đĒđĢđŦđ­đ¯đđđđđđđđđđđđđđ đđđŊđ đĄđĢđĸđŖđĨđĻđĒđŠđ¨đâĒī¸đŦđ¤đđđ¯đ°âēī¸đ­đŧđžđģđđđđŊđđ đĄâ˛ī¸đĸđĸâĩī¸đ¤đŖâī¸đâī¸đēđđđđđđđđđđđđđđđđđđđđđđđđ¨đđđđđđ˛đĄđđ đđđđĢđĻđĨâ ī¸đ§đ°âŊī¸đŽđ°â¨ī¸đŋđĒđ­đđŠđ¯đĩđ°đˇđŠđĒđ¨đŗđēđ¸đĢđˇđĒđ¸đŽđšđˇđēđŦđ§1â1¤72â1¤73â1¤74â1¤75â1¤76â1¤77â1¤78â1¤79â1¤70âŖđđ1¤7#âŖđŖâŦī¸âŦī¸âŦī¸âĄī¸đ đĄđ¤âī¸âī¸âī¸âī¸âī¸âī¸đâī¸âļī¸đŧđŊâŠī¸âĒī¸âšī¸âĒâŠâĢâŦâ¤ĩī¸â¤´ī¸đđ1¤7đđđđđđđđļđĻđđ¯ī¸đŗđĩđ´đ˛đđšđēđļđī¸đģđšđēđŧđžđ°đŽđŋī¸âŋī¸đ­đˇđ¸đâī¸đđđđđãī¸ãī¸đđđđĢđđĩđ¯đąđŗđˇđ¸âī¸âŗī¸âī¸âââ´ī¸đđđŗđ´đ°đąđđžđ âŋâģī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âī¸âđ¯đ§đšđ˛đąÂŠÂŽâĸââ1¤7ŧī¸âī¸âī¸ââââ­ī¸đđđđđđđđ§đđđđđđđđđđ đđđđđđđĄđĸđŖđ¤đĨđĻâī¸ââââ ī¸âĨī¸âŖī¸âĻī¸đŽđ¯âī¸âī¸đđâ°ã1¤7°ã1¤7Ŋī¸đąâŧī¸âģī¸âžī¸âŊī¸âĒī¸âĢī¸đēđ˛đŗâĢī¸âĒī¸đ´đĩđģâŦī¸âŦī¸đļđˇđ¸đšđđđđâēī¸đđđđđđđđđđŗđđđđđđŖđĸđđ­đĒđĨđ°đđđŠđĢđ¨đąđ đĄđ¤đđđđˇđđ´đĩđ˛đđĻđ§đđŋđŽđŦđđđ¯đļđđđđ˛đŗđŽđˇđđļđĻđ§đ¨đŠđ´đĩđąđŧđ¸đēđ¸đģđŊđŧđđŋđšđžđšđēđđđđđŊđŠđĨâ¨đđĢđĨđĸđĻđ§đ¤đ¨đđ1¤7đđđđđđđââđâđđđđđđđâī¸đđĒđļđđ1¤7")
local badwordGroup = msg.text:match("ŲØŗ") or msg.text:match("ÚŠÛØą") or msg.text:match("ŲŲŲ") or msg.text:match("ÚŠØŗÚŠØ´") or msg.text:match("ÚŠŲŲÛ") or msg.text:match("sex") or msg.text:match("ÚŠŲŲÚŠØ´") or msg.text:match("ÚŠÛØąÛ ŲŲØ§Ų") or msg.text:match("ØŽØ§ØąÚŠØŗØ¯Ų") or msg.text:match("Ø¯ÛŲØĢ") or msg.text:match("bk") or msg.text:match("ÚŠÛØąŲ Ø¯ŲŲØĒ") or msg.text:match("Ø§ØŦŲØ¯Ų") or msg.text:match("Ø¨ÛŲØ§ŲŲØŗ") or msg.text:match("Ø¨Û ŲØ§ŲŲØŗ")or msg.text:match("ŲØ§Ø¯ØąØŦŲØ¯Ų")or msg.text:match("ŲØ§Ø¯ØąØĒŲ")or msg.text:match("Ø´Ø§Ø´ ŲžØ§ÚŠØĒÛ")or msg.text:match("Ø´Ų ŲØēØ˛")
local tagGroup = msg.text:match("@") or msg.text:match("#")

if redis:get(MARDONA) and not is_momod(msg) and msg.media then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona1) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona2) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona3) and not is_momod(msg) and msg.media and msg.media.type == 'video' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona4) and not is_momod(msg) and msg.media and msg.media.type == 'stickerw.eebp' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona5) and not is_momod(msg) and msg.media   and msg.media.type == 'document' then 
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona6) and not is_momod(msg) and msg.media and msg.media.type== "mp4" then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona7) and not is_momod(msg) and msg.fwd_from then
    delete_msg(msg.id, ok_cb, true)
elseif redis:get(mardona8) and msg.reply_id and not is_momod(mag) then
    delete_msg(msg.id, ok_cb, true)
elseif linkGroup and redis:get(mardona9) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
elseif emojiGrouo and redis:get(mardona10) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
elseif badwordGroup and redis:get(mardona11) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true)
elseif tagGroup and redis:get(mardona12) and not is_momod(msg) then 
    delete_msg(msg.id, ok_cb, true) 
    return msg
end
return msg 
end
local function MARDONA(msg, matches) 
    local MARDONA = msg['id'] 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'lock' and matches[2]== 'media' then
    local MARDONA = 'mardona_mdia:'..msg.to.id 
    redis:set(MARDONA, true) 
    local text = 'Media has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'media' then
    local MARDONA = 'mardona_mdia:'..msg.to.id 
    redis:del(MARDONA) --BY @MARDONA
    local text = 'Media has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'photo' then
    local mardona1 = 'mardona_photo:'..msg.to.id 
    redis:set(mardona1, true) 
    local text = 'Photo has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'photo' then
    local mardona1 = 'mardona_photo:'..msg.to.id 
    redis:del(mardona1) 
    local text = 'Photo has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'links' then
    local mardona9 = 'mardona_link:'..msg.to.id 
    redis:set(mardona9, true) 
    local text = 'Links has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'links' then
    local mardona9 = 'mardona_link:'..msg.to.id 
    redis:del(mardona9) 
    local text = 'Links has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'audio' then
    local mardona2 = 'mardona_audio:'..msg.to.id 
    redis:set(mardona2, true) 
    local text = 'Audio has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'audio' then
    local mardona2 = 'mardona_audio:'..msg.to.id 
    redis:del(mardona2) 
    local text = 'Audio has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'emoji' then
    local mardona2 = 'mardona_emoji:'..msg.to.id 
    redis:set(mardona10, true) 
    local text = 'Emoji has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'emoji' then
    local mardona2 = 'mardona_emoji:'..msg.to.id 
    redis:del(mardona10) 
    local text = 'Emoji has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'badword' then
    local mardona11 = 'mardona_badword:'..msg.to.id 
    redis:set(mardona11, true) 
    local text = 'Badword has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'badword' then
    local mardona11 = 'mardona_badword:'..msg.to.id 
    redis:del(mardona11) 
    local text = 'Badword has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)    
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'tag' then
    local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:set(mardona12, true) 
    local text = 'Tag has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'tag' then
    local mardona12 = 'mardona_tag:'..msg.to.id 
    redis:del(mardona12) --BY @MARDONA
    local text = 'Tag has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)       

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'video' then
    local mardona3 = 'mardona_video:'..msg.to.id 
    redis:set(mardona3, true) 
    local text = 'Video has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'video' then
    local mardona3 = 'mardona_video:'..msg.to.id 
    redis:del(mardona3) 
    local text = 'Video has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'sticker' then
    local mardona4 = 'mardona_sticker:'..msg.to.id 
    redis:set(mardona4, true) 
    local text = 'Sticker has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'sticker' then
    local mardona4 = 'mardona_sticker:'..msg.to.id 
    redis:del(mardona4) 
    local text = 'Sticker has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'documents' then
    local mardona5 = 'mardona_file:'..msg.to.id 
    redis:set(mardona5, true) 
    local text = 'Documents has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'documents' then
    local mardona5 = 'mardona_file:'..msg.to.id 
    redis:del(mardona5) 
    local text = 'Documents has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'fwd' then
    local mardona7 = 'mardona_fwd:'..msg.to.id 
    redis:set(mardona7, true) 
    local text = 'Fwd has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'fwd' then
    local mardona7 = 'mardona_fwd:'..msg.to.id 
    redis:del(mardona7) 
    local text = 'Fwd has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)
    
    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'reply' then
    local mardona8 = 'mardona_reply:'..msg.to.id 
    redis:set(mardona8, true) 
    local text = 'Reply has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'reply' then
    local mardona8 = 'mardona_reply:'..msg.to.id 
    redis:del(mardona8) 
    local text = 'Reply has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)    

    elseif is_momod(msg) and matches[1] == 'lock' and matches[2]== 'gifs' then
    local mardona6 = 'mardona_gifs:'..msg.to.id 
    redis:set(mardona6, true) 
    local text = 'Gifs has been lock'
    return reply_msg(msg.id, text, ok_cb, false)
    elseif is_momod(msg) and matches[1] == 'unlock' and matches[2]== 'gifs' then
    local mardona6 = 'mardona_gifs:'..msg.to.id 
    redis:del(mardona6) 
    local text = 'Gifs has been unlock'
    return reply_msg(msg.id, text, ok_cb, false)

end
end


return { 
    patterns = { 
    '^[!/#](lock) (media)$', 
    '^[!/#](unlock) (media)$', 
    '^[!/#](lock) (photo)$', 
    '^[!/#](unlock) (photo)$', 
    '^[!/#](lock) (audio)$', 
    '^[!/#](unlock) (audio)$', 
    '^[!/#](lock) (video)$', 
    '^[!/#](unlock) (video)$', 
    '^[!/#](lock) (sticker)$', 
    '^[!/#](unlock) (sticker)$', 
    '^[!/#](lock) (documents)$', 
    '^[!/#](unlock) (documents)$',
    '^[!/#](lock) (fwd)$', 
    '^[!/#](unlock) (fwd)$',
    '^[!/#](lock) (gifs)$', 
    '^[!/#](lock) (links)$', 
    '^[!/#](unlock) (links)$',
    '^[!/#](lock) (emoji)$', 
    '^[!/#](unlock) (emoji)$',
    '^[!/#](lock) (tag)$', 
    '^[!/#](unlock) (tag)$',
    '^[!/#](lock) (badword)$', 
    '^[!/#](unlock) (badword)$',
    '^[!/#](unlock) (gifs)$',
    '^[!/#](lock) (reply)$', 
    '^[!/#](unlock) (reply)$',
	'%[(document)%]',
	'%[(photo)%]',
	'%[(video)%]',
	'%[(audio)%]',
	'%[(contact)%]',
    },
    run = MARDONA, 
    pre_process = pre_process 
} 
end
--[[
     
]]