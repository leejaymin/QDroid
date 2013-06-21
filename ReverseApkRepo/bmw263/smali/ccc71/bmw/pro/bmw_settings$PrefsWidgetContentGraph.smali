.class public Lccc71/bmw/pro/bmw_settings$PrefsWidgetContentGraph;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 389
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings$PrefsWidgetContentGraph;->addPreferencesFromResource(I)V

    .line 391
    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->b()Lccc71/bmw/lib/bmw_settings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->b()Lccc71/bmw/lib/bmw_settings;

    move-result-object v0

    check-cast v0, Lccc71/bmw/pro/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/pro/bmw_settings$PrefsWidgetContentGraph;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/bmw/pro/bmw_settings;->a(Lccc71/bmw/pro/bmw_settings;Landroid/preference/PreferenceScreen;)V

    .line 393
    :cond_0
    return-void
.end method
