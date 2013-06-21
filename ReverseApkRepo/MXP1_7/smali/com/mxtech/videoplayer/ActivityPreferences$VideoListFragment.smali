.class public Lcom/mxtech/videoplayer/ActivityPreferences$VideoListFragment;
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

    sget v0, Lnw;->frag_list:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoListFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/ActivityPreferences;

    const-string v1, "respect_nomedia"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "show_hidden"

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityPreferences$VideoListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;Landroid/preference/Preference;)V

    return-void
.end method
