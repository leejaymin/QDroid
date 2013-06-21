.class public Lcom/wolfram/android/alpha/activity/PrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "PrefsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v21, "debug"

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 38
    .local v10, isDeveloperType:Z
    if-eqz v10, :cond_c

    const v21, 0x7f050001

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;

    .line 42
    .local v3, app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    const-string v21, "location"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    .line 43
    .local v19, useLocationPreference:Landroid/preference/CheckBoxPreference;
    if-eqz v19, :cond_0

    .line 44
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLocationEnabled()Z

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 46
    :cond_0
    const-string v21, "location_interval"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 47
    .local v11, locationIntervalPreference:Landroid/preference/ListPreference;
    if-eqz v11, :cond_1

    .line 48
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getUpdateType()I

    move-result v12

    .line 49
    .local v12, locationIntervalType:I
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    .end local v12           #locationIntervalType:I
    :cond_1
    const-string v21, "keyboard"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    .line 53
    .local v18, useCustomKeyboardPreference:Landroid/preference/CheckBoxPreference;
    if-eqz v18, :cond_2

    .line 54
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    :cond_2
    const-string v21, "units"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    .line 57
    .local v16, unitsPreference:Landroid/preference/ListPreference;
    if-eqz v16, :cond_3

    .line 58
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getUnits()I

    move-result v17

    .line 59
    .local v17, unitsType:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 62
    .end local v17           #unitsType:I
    :cond_3
    const-string v21, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 63
    .local v7, fontSizePreference:Landroid/preference/ListPreference;
    if-eqz v7, :cond_4

    .line 64
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFontsize()I

    move-result v8

    .line 65
    .local v8, fontSizeType:I
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    .end local v8           #fontSizeType:I
    :cond_4
    const-string v21, "appversion"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 70
    .local v4, appVersionPreference:Landroid/preference/Preference;
    if-eqz v4, :cond_5

    .line 71
    const/4 v13, 0x0

    .line 72
    .local v13, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "com.wolfram.android.alpha"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 73
    :goto_1
    if-eqz v13, :cond_5

    .line 74
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    .end local v13           #pi:Landroid/content/pm/PackageInfo;
    :cond_5
    const-string v21, "userecalc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    .line 78
    .local v20, useRecalcPreference:Landroid/preference/CheckBoxPreference;
    if-eqz v20, :cond_6

    .line 79
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRecalculate()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    :cond_6
    const-string v21, "drawrect_imagemap"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 82
    .local v6, drawRectImagemapPreference:Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_7

    .line 83
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isDrawRectImagemap()Z

    move-result v21

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    :cond_7
    const-string v21, "asynctimeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    .line 86
    .local v5, asyncTimeoutPreference:Landroid/preference/EditTextPreference;
    if-eqz v5, :cond_8

    .line 87
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getAsync()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 89
    :cond_8
    const-string v21, "scantimeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/EditTextPreference;

    .line 90
    .local v14, scanTimeoutPreference:Landroid/preference/EditTextPreference;
    if-eqz v14, :cond_9

    .line 91
    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScanTimeout()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 93
    :cond_9
    const-string v21, "imageformat"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 94
    .local v9, imageFormatPreference:Landroid/preference/Preference;
    if-eqz v9, :cond_a

    .line 95
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getImageFormat()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v21, Lcom/wolfram/android/alpha/activity/PrefsActivity$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/PrefsActivity$1;-><init>(Lcom/wolfram/android/alpha/activity/PrefsActivity;Landroid/preference/Preference;)V

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    :cond_a
    const-string v21, "server"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 107
    .local v15, serverPreference:Landroid/preference/Preference;
    if-eqz v15, :cond_b

    .line 108
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getServer()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v21, Lcom/wolfram/android/alpha/activity/PrefsActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/PrefsActivity$2;-><init>(Lcom/wolfram/android/alpha/activity/PrefsActivity;Landroid/preference/Preference;)V

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    :cond_b
    return-void

    .line 38
    .end local v3           #app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    .end local v4           #appVersionPreference:Landroid/preference/Preference;
    .end local v5           #asyncTimeoutPreference:Landroid/preference/EditTextPreference;
    .end local v6           #drawRectImagemapPreference:Landroid/preference/CheckBoxPreference;
    .end local v7           #fontSizePreference:Landroid/preference/ListPreference;
    .end local v9           #imageFormatPreference:Landroid/preference/Preference;
    .end local v11           #locationIntervalPreference:Landroid/preference/ListPreference;
    .end local v14           #scanTimeoutPreference:Landroid/preference/EditTextPreference;
    .end local v15           #serverPreference:Landroid/preference/Preference;
    .end local v16           #unitsPreference:Landroid/preference/ListPreference;
    .end local v18           #useCustomKeyboardPreference:Landroid/preference/CheckBoxPreference;
    .end local v19           #useLocationPreference:Landroid/preference/CheckBoxPreference;
    .end local v20           #useRecalcPreference:Landroid/preference/CheckBoxPreference;
    :cond_c
    const v21, 0x7f050015

    goto/16 :goto_0

    .line 72
    .restart local v3       #app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    .restart local v4       #appVersionPreference:Landroid/preference/Preference;
    .restart local v7       #fontSizePreference:Landroid/preference/ListPreference;
    .restart local v11       #locationIntervalPreference:Landroid/preference/ListPreference;
    .restart local v13       #pi:Landroid/content/pm/PackageInfo;
    .restart local v16       #unitsPreference:Landroid/preference/ListPreference;
    .restart local v18       #useCustomKeyboardPreference:Landroid/preference/CheckBoxPreference;
    .restart local v19       #useLocationPreference:Landroid/preference/CheckBoxPreference;
    :catch_0
    move-exception v21

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 15

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 125
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;

    .line 127
    .local v0, app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 128
    .local v9, settings:Landroid/content/SharedPreferences;
    const-string v13, "server"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getServer()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, prefsServer:Ljava/lang/String;
    const-string v13, "imageformat"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getImageFormat()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, prefsImageFormat:Ljava/lang/String;
    const-string v13, "scantimeout"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScanTimeout()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, prefsScanTimeout:Ljava/lang/String;
    const-string v13, "asynctimeout"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getAsync()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, prefsAsyncTimeout:Ljava/lang/String;
    const-string v13, "units"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getUnits()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, units:Ljava/lang/String;
    const-string v13, "font_size"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getFontsize()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, fontsize:Ljava/lang/String;
    const-string v13, "location"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLocationEnabled()Z

    move-result v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 135
    .local v12, useLocation:Z
    const-string v13, "location_interval"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getUpdateType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, locationInterval:Ljava/lang/String;
    const-string v13, "keyboard"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 137
    .local v11, useCustomKeyboard:Z
    const-string v13, "userecalc"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRecalculate()Z

    move-result v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 138
    .local v7, prefsUseRecalc:Z
    const-string v13, "drawrect_imagemap"

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isDrawRectImagemap()Z

    move-result v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 140
    .local v8, prefsdrawRectImagemap:Z
    invoke-virtual {v0, v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setServer(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setImageFormat(Ljava/lang/String;)V

    .line 142
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setUnits(I)V

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setFontsize(I)V

    .line 144
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v0, v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setAsync(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v0, v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScanTimeout(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :goto_1
    invoke-virtual {v0, v7}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setRecalculate(Z)V

    .line 147
    invoke-virtual {v0, v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setDrawRectImagemap(Z)V

    .line 148
    invoke-virtual {v0, v12}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLocationEnabled(Z)V

    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setUpdateType(I)V

    .line 150
    invoke-virtual {v0, v11}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setUseCustomKeyboard(Z)V

    .line 151
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->notifyPreferenceChangeListeners()V

    .line 152
    return-void

    .line 145
    :catch_0
    move-exception v13

    goto :goto_1

    .line 144
    :catch_1
    move-exception v13

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 159
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/DebugActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/PrefsActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    const/4 v1, 0x1

    .line 164
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
