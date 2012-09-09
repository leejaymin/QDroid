.class public Lorg/chemlab/dealdroidapp/Preferences;
.super Landroid/preference/PreferenceActivity;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final APP_ENABLED:Ljava/lang/String; = "app_enabled"

.field public static final CHECK_INTERVAL:Ljava/lang/String; = "check_interval"

.field public static final NOTIFY_LED:Ljava/lang/String; = "notify_lights"

.field public static final NOTIFY_RINGTONE:Ljava/lang/String; = "notify_ringtone"

.field public static final NOTIFY_VIBRATE:Ljava/lang/String; = "notify_vibrate"

.field public static final PREFS_NAME:Ljava/lang/String; = "org.chemlab.dealdroidapp_preferences"

.field public static final SITE_ENABLED:Ljava/lang/String; = "enabled_"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private preferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Preferences;->LOG_TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private createPreferences()Landroid/preference/PreferenceScreen;
    .locals 23

    .prologue
    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/chemlab/dealdroidapp/Preferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 141
    .local v13, root:Landroid/preference/PreferenceScreen;
    const/high16 v18, 0x7f04

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 143
    new-instance v3, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 144
    .local v3, dd:Landroid/preference/PreferenceCategory;
    const/high16 v18, 0x7f04

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 145
    invoke-virtual {v13, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 147
    new-instance v4, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 148
    .local v4, enabled:Landroid/preference/CheckBoxPreference;
    const-string v18, "app_enabled"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 149
    const v18, 0x7f040005

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 150
    const v18, 0x7f040006

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 151
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/chemlab/dealdroidapp/Preferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 155
    .local v15, sites:Landroid/preference/PreferenceScreen;
    const v18, 0x7f04000f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 156
    const v18, 0x7f040010

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 158
    invoke-virtual {v3, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    new-instance v5, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 161
    .local v5, feeds:Landroid/preference/PreferenceCategory;
    const v18, 0x7f040007

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 162
    invoke-virtual {v15, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-static {}, Lorg/chemlab/dealdroidapp/Site;->values()[Lorg/chemlab/dealdroidapp/Site;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 177
    new-instance v11, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 178
    .local v11, notify:Landroid/preference/PreferenceCategory;
    const v18, 0x7f040004

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 179
    invoke-virtual {v13, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    new-instance v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 182
    .local v17, vibrate:Landroid/preference/CheckBoxPreference;
    const-string v18, "notify_vibrate"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 183
    const v18, 0x7f040008

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 184
    const v18, 0x7f04000b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 185
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 187
    new-instance v10, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 188
    .local v10, led:Landroid/preference/CheckBoxPreference;
    const-string v18, "notify_lights"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 189
    const v18, 0x7f04000a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 190
    const v18, 0x7f040009

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 191
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 193
    new-instance v12, Landroid/preference/RingtonePreference;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    .line 194
    .local v12, ring:Landroid/preference/RingtonePreference;
    const-string v18, "notify_ringtone"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/RingtonePreference;->setKey(Ljava/lang/String;)V

    .line 195
    const v18, 0x7f04000c

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/RingtonePreference;->setTitle(I)V

    .line 196
    const v18, 0x7f04000d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/RingtonePreference;->setSummary(I)V

    .line 197
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 199
    new-instance v8, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 200
    .local v8, interval:Landroid/preference/ListPreference;
    const-string v18, "check_interval"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 201
    const v18, 0x7f040011

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 202
    const v18, 0x7f040012

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 204
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v9, intervals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v7, iValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/chemlab/dealdroidapp/Interval;->values()[Lorg/chemlab/dealdroidapp/Interval;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 210
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 211
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 212
    sget-object v18, Lorg/chemlab/dealdroidapp/Interval;->I_10_MINUTES:Lorg/chemlab/dealdroidapp/Interval;

    invoke-virtual/range {v18 .. v18}, Lorg/chemlab/dealdroidapp/Interval;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 214
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 216
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    invoke-virtual {v11, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/chemlab/dealdroidapp/Preferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 221
    .local v2, about:Landroid/preference/PreferenceScreen;
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v19, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    const-string v19, "http://dealdroid.googlecode.com"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 222
    const v18, 0x7f040003

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 223
    invoke-virtual {v13, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    return-object v13

    .line 164
    .end local v2           #about:Landroid/preference/PreferenceScreen;
    .end local v7           #iValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #interval:Landroid/preference/ListPreference;
    .end local v9           #intervals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #led:Landroid/preference/CheckBoxPreference;
    .end local v11           #notify:Landroid/preference/PreferenceCategory;
    .end local v12           #ring:Landroid/preference/RingtonePreference;
    .end local v17           #vibrate:Landroid/preference/CheckBoxPreference;
    :cond_0
    aget-object v14, v19, v18

    .line 166
    .local v14, site:Lorg/chemlab/dealdroidapp/Site;
    new-instance v16, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 167
    .local v16, toggle:Landroid/preference/CheckBoxPreference;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "enabled_"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/chemlab/dealdroidapp/Site;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v14}, Lorg/chemlab/dealdroidapp/Site;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Category: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/chemlab/dealdroidapp/Site;->getCategory()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Lorg/chemlab/dealdroidapp/Site;->getSite()Ljava/net/URL;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v14}, Lorg/chemlab/dealdroidapp/Site;->isEnabledByDefault()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 172
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 206
    .end local v14           #site:Lorg/chemlab/dealdroidapp/Site;
    .end local v16           #toggle:Landroid/preference/CheckBoxPreference;
    .restart local v7       #iValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #interval:Landroid/preference/ListPreference;
    .restart local v9       #intervals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #led:Landroid/preference/CheckBoxPreference;
    .restart local v11       #notify:Landroid/preference/PreferenceCategory;
    .restart local v12       #ring:Landroid/preference/RingtonePreference;
    .restart local v17       #vibrate:Landroid/preference/CheckBoxPreference;
    :cond_1
    aget-object v6, v19, v18

    .line 207
    .local v6, i:Lorg/chemlab/dealdroidapp/Interval;
    invoke-virtual {v6}, Lorg/chemlab/dealdroidapp/Interval;->name()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v6}, Lorg/chemlab/dealdroidapp/Interval;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1
.end method

.method public static getNumSitesEnabled(Landroid/content/SharedPreferences;)I
    .locals 6
    .parameter "preferences"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, si:I
    invoke-static {}, Lorg/chemlab/dealdroidapp/Site;->values()[Lorg/chemlab/dealdroidapp/Site;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 248
    return v0

    .line 243
    :cond_0
    aget-object v1, v3, v2

    .line 244
    .local v1, site:Lorg/chemlab/dealdroidapp/Site;
    invoke-static {p0, v1}, Lorg/chemlab/dealdroidapp/Preferences;->isEnabled(Landroid/content/SharedPreferences;Lorg/chemlab/dealdroidapp/Site;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/SharedPreferences;Lorg/chemlab/dealdroidapp/Site;)Z
    .locals 2
    .parameter "preferences"
    .parameter "site"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enabled_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const-string v2, "org.chemlab.dealdroidapp_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chemlab/dealdroidapp/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .local v0, enabled:Z
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Preferences;->preferenceScreen:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_0

    .line 64
    invoke-direct {p0}, Lorg/chemlab/dealdroidapp/Preferences;->createPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/Preferences;->preferenceScreen:Landroid/preference/PreferenceScreen;

    .line 67
    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 68
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_START:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v2}, Lorg/chemlab/dealdroidapp/Intents;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    .local v1, si:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lorg/chemlab/dealdroidapp/Preferences;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .end local v1           #si:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Preferences;->preferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v2}, Lorg/chemlab/dealdroidapp/Preferences;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 74
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 100
    iget-object v5, p0, Lorg/chemlab/dealdroidapp/Preferences;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Pref changed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p2, :cond_0

    .line 105
    const-string v5, "app_enabled"

    const/4 v6, 0x1

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    .local v0, enabled:Z
    const-string v5, "enabled_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    const-string v5, "enabled_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/chemlab/dealdroidapp/Site;->valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Site;

    move-result-object v3

    .line 111
    .local v3, site:Lorg/chemlab/dealdroidapp/Site;
    const/4 v5, 0x0

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_ENABLE:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Intents;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 112
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    const-string v5, "site"

    invoke-virtual {v3}, Lorg/chemlab/dealdroidapp/Site;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v1}, Lorg/chemlab/dealdroidapp/Preferences;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    .end local v0           #enabled:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v0       #enabled:Z
    .restart local v3       #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_1
    sget-object v5, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_DISABLE:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Intents;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 116
    .end local v3           #site:Lorg/chemlab/dealdroidapp/Site;
    :cond_2
    if-eqz v0, :cond_3

    const-string v5, "check_interval"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    sget-object v5, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_RESTART:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Intents;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 119
    .local v2, reschedule:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lorg/chemlab/dealdroidapp/Preferences;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 121
    .end local v2           #reschedule:Landroid/content/Intent;
    :cond_3
    const-string v5, "app_enabled"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    if-eqz v0, :cond_4

    sget-object v5, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_START:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Intents;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 124
    .local v4, toggle:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v4}, Lorg/chemlab/dealdroidapp/Preferences;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 123
    .end local v4           #toggle:Landroid/content/Intent;
    :cond_4
    sget-object v5, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_STOP:Lorg/chemlab/dealdroidapp/Intents;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/Intents;->getIntent()Landroid/content/Intent;

    move-result-object v4

    goto :goto_2
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 91
    const-string v0, "org.chemlab.dealdroidapp_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chemlab/dealdroidapp/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 92
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 82
    const-string v0, "org.chemlab.dealdroidapp_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chemlab/dealdroidapp/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    return-void
.end method
