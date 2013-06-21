.class public Lcom/inisoft/mediaplayer/SettingsActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private A:Ljava/util/Locale;

.field private a:Landroid/preference/Preference;

.field private b:Landroid/preference/Preference;

.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:Landroid/preference/Preference;

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private j:Landroid/preference/Preference;

.field private k:Lcom/inisoft/mediaplayer/CustomSubtitleTextPreference;

.field private l:Landroid/preference/Preference;

.field private m:Lcom/inisoft/mediaplayer/CustomDisplayPreference;

.field private n:Lcom/inisoft/mediaplayer/CustomGesturePreference;

.field private o:Lcom/inisoft/mediaplayer/CustomSubtitlePreference;

.field private p:Lcom/inisoft/mediaplayer/CustomSeekPreference;

.field private q:Landroid/preference/Preference;

.field private r:Landroid/preference/Preference;

.field private s:Landroid/preference/Preference;

.field private t:Landroid/preference/Preference;

.field private u:Landroid/preference/Preference;

.field private v:Landroid/preference/Preference;

.field private w:Landroid/preference/Preference;

.field private x:Landroid/preference/Preference;

.field private y:Landroid/preference/Preference;

.field private z:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    return-void
.end method

.method private static a(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "continuation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, "thumbnail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, "subtitle_encodings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v1, "subtitle_colors"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const-string v1, "subtitle_fontsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const-string v1, "root_folder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const-string v1, "local_server"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const-string v1, "playnextfile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_9
    const-string v1, "rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_a
    const-string v1, "lastfolder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_b
    const-string v1, "backkeyprotect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "checkforexit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "subtitle_modes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, "vobSubtitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_f
    const-string v1, "showAudioFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_10
    const-string v1, "playback_speed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_11
    const-string v1, "screenoff_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_12
    const-string v1, "volume_boost"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    const-string v1, "theme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_14
    const-string v1, "exclusion_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_15
    const-string v1, "force_english"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_16
    const-string v1, "sec_hdmi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_17
    const-string v1, "popup_ratio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_18
    const-string v1, "support_ruby"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v4}, Lcom/inisoft/mediaplayer/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v2, "force_english"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "en"

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    :goto_0
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SettingsActivity;->setTitle(I)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SettingsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "file_extensions"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->b:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "audiotrack"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->a:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "continuation"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->c:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "thumbnail"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->d:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "playnextfile"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->e:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "lastfolder"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->f:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "backkeyprotect"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->g:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "checkforexit"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->h:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "subtitle_modes"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->i:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "vobSubtitle"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->j:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "subtitle_text"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/CustomSubtitleTextPreference;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->k:Lcom/inisoft/mediaplayer/CustomSubtitleTextPreference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "showAudioFile"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->l:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "settings_display_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/CustomDisplayPreference;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->m:Lcom/inisoft/mediaplayer/CustomDisplayPreference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "settings_gesture_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/CustomGesturePreference;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->n:Lcom/inisoft/mediaplayer/CustomGesturePreference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "settings_gesture_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/CustomSubtitlePreference;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->o:Lcom/inisoft/mediaplayer/CustomSubtitlePreference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "seek_intervals"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/CustomSeekPreference;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->p:Lcom/inisoft/mediaplayer/CustomSeekPreference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "playback_speed"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->q:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "screenoff_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->r:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "volume_boost"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->s:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "theme"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->t:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "exclusion_list"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->u:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "force_english"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->v:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "use_custom_codec"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->w:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "sec_hdmi"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->x:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "popup_ratio"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->y:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "support_ruby"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->z:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->a:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "audiotrack"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->a:Landroid/preference/Preference;

    const-string v2, "audiotrack"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->c:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "continuation"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->c:Landroid/preference/Preference;

    const-string v2, "continuation"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->d:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "thumbnail"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->d:Landroid/preference/Preference;

    const-string v2, "thumbnail"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->q:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "playback_speed"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->q:Landroid/preference/Preference;

    const-string v2, "playback_speed"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "lastfolder"

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->f:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "lastfolder"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->f:Landroid/preference/Preference;

    const-string v2, "lastfolder"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->e:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "playnextfile"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->e:Landroid/preference/Preference;

    const-string v2, "playnextfile"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->g:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "backkeyprotect"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->g:Landroid/preference/Preference;

    const-string v2, "backkeyprotect"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v0, "checkforexit"

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->h:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v3, "checkforexit"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->h:Landroid/preference/Preference;

    const-string v2, "checkforexit"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->i:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->j:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "vobSubtitle"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->j:Landroid/preference/Preference;

    const-string v2, "vobSubtitle"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->l:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "showAudioFile"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->l:Landroid/preference/Preference;

    const-string v2, "showAudioFile"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->r:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "screenoff_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->r:Landroid/preference/Preference;

    const-string v2, "screenoff_mode"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v0, "volume_booster"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->s:Landroid/preference/Preference;

    const-string v2, "volume_boost"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "volume_boost"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "volume_booster"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->s:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    const-string v2, "volume_boost"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->s:Landroid/preference/Preference;

    const-string v2, "volume_boost"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->t:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    const-string v2, "Light"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->t:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    const-string v2, "theme"

    const-string v3, "Light"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->t:Landroid/preference/Preference;

    const-string v2, "theme"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->u:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "exclusion_list"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->u:Landroid/preference/Preference;

    const-string v2, "exclusion_list"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->v:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "force_english"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->v:Landroid/preference/Preference;

    const-string v2, "force_english"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->isNeon()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->x:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "sec_hdmi"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->x:Landroid/preference/Preference;

    const-string v2, "sec_hdmi"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->y:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    const-string v2, "popup_ratio"

    const-string v3, "3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->y:Landroid/preference/Preference;

    const-string v2, "popup_ratio"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->z:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "support_ruby"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->z:Landroid/preference/Preference;

    const-string v1, "support_ruby"

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "force_language"

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->A:Ljava/util/Locale;

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->i:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v2, "subtitle_modes"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->i:Landroid/preference/Preference;

    const-string v2, "subtitle_modes"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getUseCustomLibrary(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->w:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v3, "use_custom_codec"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->w:Landroid/preference/Preference;

    const-string v2, "use_custom_codec"

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v4}, Lcom/inisoft/mediaplayer/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "audiotrack"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->a:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v2, "continuation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->c:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v2, "thumbnail"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->d:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v2, "local_server"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v2, "playnextfile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->e:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v2, "lastfolder"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->f:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-string v2, "backkeyprotect"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->g:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v2, "checkforexit"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->h:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_6
    const-string v2, "subtitle_modes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->i:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_7
    const-string v2, "vobSubtitle"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->j:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_8
    const-string v2, "showAudioFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->l:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_9
    const-string v2, "playback_speed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->q:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_a
    const-string v2, "screenoff_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->r:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_b
    const-string v2, "volume_boost"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->s:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v2, "1"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_c
    const-string v2, "popup_ratio"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->y:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v2, "3"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_d
    const-string v2, "theme"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->t:Landroid/preference/Preference;

    invoke-static {v2, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    const-string v2, "theme"

    const-string v3, "Light"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Light"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "Light"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/a/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v6}, Lcom/inisoft/mediaplayer/SettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->finish()V

    :goto_0
    return-void

    :cond_e
    const-string v0, "exclusion_list"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->u:Landroid/preference/Preference;

    invoke-static {v0, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v5}, Lcom/inisoft/mediaplayer/SettingsActivity;->setResult(I)V

    :cond_f
    const-string v0, "force_english"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->v:Landroid/preference/Preference;

    invoke-static {v0, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v2, "force_language"

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/inisoft/mediaplayer/SettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->finish()V

    :cond_11
    const-string v0, "use_custom_codec"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->w:Landroid/preference/Preference;

    invoke-static {v0, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->checkCustomLibrary()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a00c2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->reloadLibrary(Landroid/content/Context;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/a/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v6}, Lcom/inisoft/mediaplayer/SettingsActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->finish()V

    goto/16 :goto_0

    :cond_12
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->reloadLibrary(Landroid/content/Context;Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/inisoft/mediaplayer/a/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v6}, Lcom/inisoft/mediaplayer/SettingsActivity;->setResult(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "sec_hdmi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->x:Landroid/preference/Preference;

    invoke-static {v0, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_14
    const-string v0, "support_ruby"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/inisoft/mediaplayer/SettingsActivity;->z:Landroid/preference/Preference;

    invoke-static {v0, p2}, Lcom/inisoft/mediaplayer/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_15
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
