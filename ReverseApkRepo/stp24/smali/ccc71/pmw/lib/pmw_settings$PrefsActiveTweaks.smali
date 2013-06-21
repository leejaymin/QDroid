.class public Lccc71/pmw/lib/pmw_settings$PrefsActiveTweaks;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3944
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 3949
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3951
    sget v0, Lccc71/pmw/lib/i;->n:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings$PrefsActiveTweaks;->addPreferencesFromResource(I)V

    .line 3953
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3954
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings$PrefsActiveTweaks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->i(Lccc71/pmw/lib/pmw_settings;Landroid/preference/PreferenceScreen;)V

    .line 3955
    :cond_0
    return-void
.end method
