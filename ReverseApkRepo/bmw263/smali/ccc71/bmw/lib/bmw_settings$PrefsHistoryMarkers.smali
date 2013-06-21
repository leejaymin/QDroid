.class public Lccc71/bmw/lib/bmw_settings$PrefsHistoryMarkers;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2375
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2380
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2382
    sget v0, Lccc71/bmw/lib/h;->i:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings$PrefsHistoryMarkers;->addPreferencesFromResource(I)V

    .line 2384
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    if-eqz v0, :cond_0

    .line 2385
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings$PrefsHistoryMarkers;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->d(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V

    .line 2386
    :cond_0
    return-void
.end method
