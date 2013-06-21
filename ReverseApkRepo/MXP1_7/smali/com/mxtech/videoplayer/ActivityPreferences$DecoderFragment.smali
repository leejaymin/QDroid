.class public Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;
.super Landroid/preference/PreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lnw;->frag_decoder:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/ActivityPreferences;

    const-string v1, "category_hardware_decoder"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v2, "core_limit"

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    const-string v3, "custom_codec"

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "omxdecoder"

    invoke-virtual {p0, v4}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "omxdecoder_local"

    invoke-virtual {p0, v5}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "omxdecoder_net"

    invoke-virtual {p0, v6}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const-string v7, "omxdecoder_10bit"

    invoke-virtual {p0, v7}, Lcom/mxtech/videoplayer/ActivityPreferences$DecoderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/PreferenceGroup;Landroid/preference/ListPreference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    return-void
.end method
