.class public Lexam/Data/PrefActivity;
.super Landroid/preference/PreferenceActivity;
.source "PrefActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lexam/Data/PrefActivity;->addPreferencesFromResource(I)V

    .line 11
    return-void
.end method