.class public Lcom/mxtech/videoplayer/ActivityPreferences$VideoPlayerFragment;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lnw;->frag_player:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoPlayerFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/ActivityPreferences;

    const-string v1, "category_player_playback"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoPlayerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "category_player_display"

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoPlayerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v0, v1, v2}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;)V

    return-void
.end method
