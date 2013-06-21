.class public Lccc71/pmw/lib/pmw_settings$PrefsMonitorUsage;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3891
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 3896
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3898
    sget v0, Lccc71/pmw/lib/i;->j:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings$PrefsMonitorUsage;->addPreferencesFromResource(I)V

    .line 3900
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3901
    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->a()Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_settings$PrefsMonitorUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    invoke-static {}, Lccc71/pmw/lib/pmw_settings;->b()V

    .line 3902
    :cond_0
    return-void
.end method
