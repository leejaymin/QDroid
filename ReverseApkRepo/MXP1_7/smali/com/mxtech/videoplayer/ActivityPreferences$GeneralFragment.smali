.class public Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lnw;->frag_general:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/ActivityPreferences;

    const-string v1, "play_video_links"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/CheckBoxPreference;)V

    const-string v1, "reset_settings"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V

    const-string v1, "clear_history"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V

    const-string v1, "clear_thumbnail"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$GeneralFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->弱밧(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V

    return-void
.end method
