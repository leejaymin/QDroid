.class public Lcaldwell/ben/trolly/TrollyPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TrollyPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcaldwell/ben/trolly/TrollyPreferences;->addPreferencesFromResource(I)V

    .line 30
    return-void
.end method
