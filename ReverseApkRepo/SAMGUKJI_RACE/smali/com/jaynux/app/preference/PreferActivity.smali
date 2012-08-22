.class public Lcom/jaynux/app/preference/PreferActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/jaynux/app/preference/PreferActivity;->addPreferencesFromResource(I)V

    .line 14
    return-void
.end method
