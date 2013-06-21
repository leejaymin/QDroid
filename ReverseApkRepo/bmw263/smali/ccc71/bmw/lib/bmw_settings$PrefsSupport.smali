.class public Lccc71/bmw/lib/bmw_settings$PrefsSupport;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2505
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 2510
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2512
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    if-eqz v0, :cond_0

    .line 2514
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->a(Lccc71/bmw/lib/bmw_settings;)V

    .line 2515
    sget-object v0, Lccc71/bmw/lib/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_settings;->finish()V

    .line 2517
    :cond_0
    return-void
.end method
