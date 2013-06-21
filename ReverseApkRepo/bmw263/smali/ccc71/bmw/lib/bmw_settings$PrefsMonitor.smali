.class public Lccc71/bmw/lib/bmw_settings$PrefsMonitor;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2333
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2338
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2340
    sget v0, Lccc71/bmw/lib/h;->j:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings$PrefsMonitor;->addPreferencesFromResource(I)V

    .line 2342
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    if-eqz v0, :cond_0

    .line 2343
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings$PrefsMonitor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->a(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V

    .line 2344
    :cond_0
    return-void
.end method
