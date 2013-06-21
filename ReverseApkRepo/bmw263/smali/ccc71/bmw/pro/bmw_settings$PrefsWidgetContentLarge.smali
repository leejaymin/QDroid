.class public Lccc71/bmw/pro/bmw_settings$PrefsWidgetContentLarge;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 374
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings$PrefsWidgetContentLarge;->addPreferencesFromResource(I)V

    .line 376
    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->b()Lccc71/bmw/lib/bmw_settings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lccc71/bmw/pro/bmw_settings;->b()Lccc71/bmw/lib/bmw_settings;

    move-result-object v0

    check-cast v0, Lccc71/bmw/pro/bmw_settings;

    invoke-virtual {p0}, Lccc71/bmw/pro/bmw_settings$PrefsWidgetContentLarge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/bmw/pro/bmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    .line 378
    :cond_0
    return-void
.end method
