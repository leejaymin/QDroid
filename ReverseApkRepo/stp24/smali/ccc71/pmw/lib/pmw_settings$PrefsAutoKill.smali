.class public Lccc71/pmw/lib/pmw_settings$PrefsAutoKill;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3933
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 3938
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3940
    sget v0, Lccc71/pmw/lib/i;->b:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_settings$PrefsAutoKill;->addPreferencesFromResource(I)V

    .line 3941
    return-void
.end method
