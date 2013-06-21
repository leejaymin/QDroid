.class public Lcom/spritefish/fastburstcamera/activities/Preferences;
.super Landroid/preference/PreferenceActivity;
.source "Preferences.java"


# static fields
.field public static final LABEL_PREF_KEY:Ljava/lang/String; = "labelprefix"

.field public static final MEMORY_PREF_KEY:Ljava/lang/String; = "memoryPref"

.field public static final SHOOTMODE_PREF_KEY:Ljava/lang/String; = "shootmodePref"

.field public static final SHOW_LABEL_PREF_KEY:Ljava/lang/String; = "showlabel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->initResolutionList()V

    return-void
.end method

.method private initResolutionList()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 148
    const-string v10, "resolutionPref"

    invoke-virtual {p0, v10}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 149
    .local v6, listPref:Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v10}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getResolutions()[Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, resolutions:[Ljava/lang/String;
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, res:Ljava/lang/String;
    const-wide/16 v3, -0x1

    .line 154
    .local v3, largest:J
    const-string v5, ""

    .line 155
    .local v5, largestString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 156
    .local v1, found:Z
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 158
    array-length v12, v8

    move v10, v11

    :goto_0
    if-lt v10, v12, :cond_1

    .line 172
    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v10}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getResolutions()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v10

    check-cast v10, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v10}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->getResolutions()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 181
    return-void

    .line 158
    :cond_1
    aget-object v0, v8, v10

    .line 160
    .local v0, allowedRes:Ljava/lang/String;
    const-string v13, "x"

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 161
    .local v9, w:I
    const-string v13, "x"

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, h:I
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 164
    const/4 v1, 0x1

    .line 165
    :cond_2
    mul-int v13, v9, v2

    int-to-long v13, v13

    cmp-long v13, v13, v3

    if-lez v13, :cond_3

    .line 167
    mul-int v13, v9, v2

    int-to-long v3, v13

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v9, 0x7f050001

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v9}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isNextVersion()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 35
    const-string v9, "shootmodePref"

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 36
    .local v7, shootmodePref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 38
    .end local v7           #shootmodePref:Landroid/preference/Preference;
    :cond_0
    invoke-direct {p0}, Lcom/spritefish/fastburstcamera/activities/Preferences;->initResolutionList()V

    .line 39
    const-string v9, "locationtype"

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 40
    .local v4, locationType:Landroid/preference/Preference;
    const-string v9, "customlocation"

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 42
    .local v1, customLocation:Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "customlocation"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 45
    .local v6, sdcard:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, storagePath:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 47
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "customlocation"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #sdcard:Ljava/io/File;
    .end local v8           #storagePath:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "locationtype"

    const-string v11, "default"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "custom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 53
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 59
    :goto_0
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/Preferences$1;

    invoke-direct {v9, p0, v1}, Lcom/spritefish/fastburstcamera/activities/Preferences$1;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences;Landroid/preference/Preference;)V

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string v9, "screenclickPref"

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 78
    .local v0, clickPref:Landroid/preference/Preference;
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/Preferences$2;

    invoke-direct {v9, p0}, Lcom/spritefish/fastburstcamera/activities/Preferences$2;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences;)V

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    const-string v9, "resolutionPref"

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 103
    .local v3, listPref:Landroid/preference/ListPreference;
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/Preferences$3;

    invoke-direct {v9, p0}, Lcom/spritefish/fastburstcamera/activities/Preferences$3;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences;)V

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-string v9, "highres"

    invoke-virtual {p0, v9}, Lcom/spritefish/fastburstcamera/activities/Preferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 118
    .local v5, pref:Landroid/preference/Preference;
    new-instance v9, Lcom/spritefish/fastburstcamera/activities/Preferences$4;

    invoke-direct {v9, p0}, Lcom/spritefish/fastburstcamera/activities/Preferences$4;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences;)V

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    return-void

    .line 56
    .end local v0           #clickPref:Landroid/preference/Preference;
    .end local v3           #listPref:Landroid/preference/ListPreference;
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
