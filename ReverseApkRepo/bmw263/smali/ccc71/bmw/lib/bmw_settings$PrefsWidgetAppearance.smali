.class public Lccc71/bmw/lib/bmw_settings$PrefsWidgetAppearance;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2587
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2592
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2594
    sget v0, Lccc71/bmw/lib/h;->m:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_settings$PrefsWidgetAppearance;->addPreferencesFromResource(I)V

    .line 2596
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    if-eqz v0, :cond_0

    .line 2598
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings$PrefsWidgetAppearance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/preference/PreferenceScreen;)V

    .line 2599
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_settings$PrefsWidgetAppearance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->h(Lccc71/bmw/lib/bmw_settings;Landroid/preference/PreferenceScreen;)V

    .line 2601
    :cond_0
    return-void
.end method
