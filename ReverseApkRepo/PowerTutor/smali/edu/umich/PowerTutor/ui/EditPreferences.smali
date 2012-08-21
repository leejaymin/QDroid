.class public Ledu/umich/PowerTutor/ui/EditPreferences;
.super Landroid/preference/PreferenceActivity;
.source "EditPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/EditPreferences;->addPreferencesFromResource(I)V

    .line 31
    return-void
.end method
