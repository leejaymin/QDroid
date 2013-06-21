.class public Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/ActivityPreferences;

    sget v1, Lnw;->frag_subtitle:I

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->addPreferencesFromResource(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    const-string v1, "category_subtitle_appearance"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "subtitle_hw_accel"

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    const-string v2, "Can\'t remove preference: subtitle_hw_accel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "subtitle_charset"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V

    const-string v1, "category_subtitle_load"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "subtitle_folder"

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "subtitle_show_hw"

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;)V

    const-string v1, "typeface_dir"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$SubtitleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->궗(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V

    return-void
.end method
