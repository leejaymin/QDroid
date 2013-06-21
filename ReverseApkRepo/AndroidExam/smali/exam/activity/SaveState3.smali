.class public Lexam/activity/SaveState3;
.super Landroid/app/Activity;
.source "SaveState3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/activity/SaveState3$MyView;
    }
.end annotation


# instance fields
.field private vw:Lexam/activity/SaveState3$MyView;

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x32

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    iput v3, p0, Lexam/activity/SaveState3;->x:I

    .line 22
    :goto_0
    const-string v1, "SaveState"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lexam/activity/SaveState3;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "y"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lexam/activity/SaveState3;->y:I

    .line 24
    new-instance v1, Lexam/activity/SaveState3$MyView;

    invoke-direct {v1, p0, p0}, Lexam/activity/SaveState3$MyView;-><init>(Lexam/activity/SaveState3;Landroid/content/Context;)V

    iput-object v1, p0, Lexam/activity/SaveState3;->vw:Lexam/activity/SaveState3$MyView;

    .line 25
    iget-object v1, p0, Lexam/activity/SaveState3;->vw:Lexam/activity/SaveState3$MyView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lexam/activity/SaveState3$MyView;->setFocusable(Z)V

    .line 26
    iget-object v1, p0, Lexam/activity/SaveState3;->vw:Lexam/activity/SaveState3$MyView;

    invoke-virtual {p0, v1}, Lexam/activity/SaveState3;->setContentView(Landroid/view/View;)V

    .line 27
    return-void

    .line 20
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lexam/activity/SaveState3;->x:I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 31
    const-string v2, "SaveState"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lexam/activity/SaveState3;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "y"

    iget v3, p0, Lexam/activity/SaveState3;->y:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 38
    const-string v0, "x"

    iget v1, p0, Lexam/activity/SaveState3;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    return-void
.end method
