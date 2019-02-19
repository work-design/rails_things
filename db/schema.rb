# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "ZGLOBALS", primary_key: "Z_PK", force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZSYNCEDAREASINITIAL"
    t.integer "ZSYNCEDTAGSINITIAL"
    t.datetime "ZAPPLICATIONQUITDATE"
    t.datetime "ZLOGDATE"
    t.datetime "ZMAINTENANCEDATE"
    t.datetime "ZSYNCEDDATE"
    t.string "ZIDENTIFIER"
    t.string "ZSYNCEDDEVICEIDENTIFIER"
    t.string "ZSYNCEDDEVICEMODEL"
    t.string "ZSYNCEDDEVICENAME"
    t.binary "ZSYNCEDDEVICESDATA"
  end

  create_table "ZMOBILESYNCITEM", primary_key: "Z_PK", force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.string "ZCHANGEDKEYS"
    t.string "ZDEVICEIDENTIFIER"
    t.string "ZTYPE"
    t.string "ZUUID"
  end

  create_table "ZSYNCEDCALENDAR", primary_key: "Z_PK", force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZINDEX"
    t.integer "ZISEDITABLE"
    t.integer "ZSYNCS"
    t.string "ZFOCUSID"
    t.string "ZSYSTEMID"
    t.string "ZTITLE"
    t.binary "ZPREDICATE"
  end

  create_table "ZSYNCEDTASK", primary_key: "Z_PK", force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZCALENDAR"
    t.integer "ZTASK"
    t.string "ZSYSTEMID"
    t.index ["ZCALENDAR"], name: "ZSYNCEDTASK_ZCALENDAR_INDEX"
    t.index ["ZTASK"], name: "ZSYNCEDTASK_ZTASK_INDEX"
  end

  create_table "ZSYNCMETADATA", primary_key: "Z_PK", force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.string "ZDATA"
    t.string "ZKEY"
    t.index ["ZKEY"], name: "ZSYNCMETADATA_ZKEY_INDEX"
  end

  create_table "ZTHING", primary_key: "Z_PK", force: :cascade do |t|
    t.integer "Z_ENT"
    t.integer "Z_OPT"
    t.integer "ZCHILDRENHIDDEN"
    t.integer "ZCOMPACT"
    t.integer "ZINDEX"
    t.integer "ZPARENT"
    t.integer "Z6_PARENT"
    t.integer "ZDISPLAY"
    t.integer "ZFOCUSLEVEL"
    t.integer "ZFOCUSTYPE"
    t.integer "ZTAG"
    t.integer "ZSENDSTHINGSFILE"
    t.integer "ZFOCUSLEVEL1"
    t.integer "ZFOCUSTYPE1"
    t.integer "ZAUTHOR"
    t.integer "ZDUEDATEOFFSET"
    t.integer "ZINSTANCECREATIONCOUNT"
    t.integer "ZINSTANCECREATIONPAUSED"
    t.integer "ZSTART"
    t.integer "ZSTATUS"
    t.integer "ZTODAYINDEX"
    t.integer "ZTRASHED"
    t.integer "ZTYPE"
    t.integer "ZAREA"
    t.integer "ZDELEGATE"
    t.integer "ZPROJECT"
    t.integer "ZRECURRENCEINSTANCE"
    t.integer "ZRECURRENCETEMPLATE"
    t.integer "ZREPEATINGTEMPLATE"
    t.integer "ZSCHEDULER"
    t.integer "ZSYNCDATA"
    t.integer "ZTYPE1"
    t.integer "ZRECORD"
    t.integer "Z8_RECORD"
    t.datetime "ZCREATIONDATE"
    t.datetime "ZAFTERCOMPLETIONREFERENCEDATE"
    t.datetime "ZDELEGATEDDATE"
    t.datetime "ZDUEDATE"
    t.datetime "ZDUEDATEWITHOFFSET"
    t.datetime "ZINSTANCECREATIONSTARTDATE"
    t.datetime "ZNOTIFIEDDATE"
    t.datetime "ZRECEIVEDDATE"
    t.datetime "ZRETURNEDDATE"
    t.datetime "ZSENTDATE"
    t.datetime "ZSTARTDATE"
    t.datetime "ZSTOPPEDDATE"
    t.datetime "ZTICKLEDATE"
    t.float "ZTODAYOFFSET"
    t.datetime "ZUSERMODIFICATIONDATE"
    t.datetime "ZUSEDDATE"
    t.string "ZIDENTIFIER"
    t.string "ZTITLE"
    t.string "ZADDRESSBOOKID"
    t.string "ZDISPLAYNAMEDESCRIPTOR"
    t.string "ZPREFERREDEMAILID"
    t.string "ZNOTES"
    t.string "ZOUTCOME"
    t.string "ZSHORTCUT"
    t.binary "ZRECURRENCERULEDATA"
    t.index ["ZAREA"], name: "ZTHING_ZAREA_INDEX"
    t.index ["ZAUTHOR"], name: "ZTHING_ZAUTHOR_INDEX"
    t.index ["ZDELEGATE"], name: "ZTHING_ZDELEGATE_INDEX"
    t.index ["ZIDENTIFIER"], name: "ZTHING_ZIDENTIFIER_INDEX"
    t.index ["ZPARENT"], name: "ZTHING_ZPARENT_INDEX"
    t.index ["ZPROJECT"], name: "ZTHING_ZPROJECT_INDEX"
    t.index ["ZRECORD"], name: "ZTHING_ZRECORD_INDEX"
    t.index ["ZRECURRENCEINSTANCE"], name: "ZTHING_ZRECURRENCEINSTANCE_INDEX"
    t.index ["ZRECURRENCETEMPLATE"], name: "ZTHING_ZRECURRENCETEMPLATE_INDEX"
    t.index ["ZREPEATINGTEMPLATE"], name: "ZTHING_ZREPEATINGTEMPLATE_INDEX"
    t.index ["ZSCHEDULER"], name: "ZTHING_ZSCHEDULER_INDEX"
    t.index ["ZSYNCDATA"], name: "ZTHING_ZSYNCDATA_INDEX"
    t.index ["ZTAG"], name: "ZTHING_ZTAG_INDEX"
    t.index ["Z_ENT"], name: "ZTHING_Z_ENT_INDEX"
  end

  create_table "Z_12TAGS", primary_key: ["Z_12NOTES", "Z_14TAGS"], force: :cascade do |t|
    t.integer "Z_12NOTES"
    t.integer "Z_14TAGS"
    t.index ["Z_14TAGS", "Z_12NOTES"], name: "Z_12TAGS_Z_14TAGS_INDEX"
  end

  create_table "Z_METADATA", primary_key: "Z_VERSION", force: :cascade do |t|
    t.string "Z_UUID", limit: 255
    t.binary "Z_PLIST"
  end

  create_table "Z_MODELCACHE", id: false, force: :cascade do |t|
    t.binary "Z_CONTENT"
  end

  create_table "Z_PRIMARYKEY", primary_key: "Z_ENT", force: :cascade do |t|
    t.string "Z_NAME"
    t.integer "Z_SUPER"
    t.integer "Z_MAX"
  end

end
