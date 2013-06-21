.class public Lexam/activity/SaveState2;
.super Landroid/app/Activity;
.source "SaveState2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/activity/SaveState2$MyView;
    }
.end annotation


# instance fields
.field private vw:Lexam/activity/SaveState2$MyView;

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
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x32

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    iput v1, p0, Lexam/activity/SaveState2;->x:I

    .line 22
    :goto_0
    iput v1, p0, Lexam/activity/SaveState2;->y:I

    .line 23
    new-instance v0, Lexam/activity/SaveState2$MyView;

    invoke-direct {v0, p0, p0}, Lexam/activity/SaveState2$MyView;-><init>(Lexam/activity/SaveState2;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/activity/SaveState2;->vw:Lexam/activity/SaveState2$MyView;

    .line 24
    iget-object v0, p0, Lexam/activity/SaveState2;->vw:Lexam/activity/SaveState2$MyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lexam/activity/SaveState2$MyView;->setFocusable(Z)V

    .line 25
    iget-object v0, p0, Lexam/activity/SaveState2;->vw:Lexam/activity/SaveState2$MyView;

    invoke-virtual {p0, v0}, Lexam/activity/SaveState2;->setContentView(Landroid/view/View;)V

    .line 26
    return-void

    .line 20
    :cond_0
    const-string v0, "x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lexam/activity/SaveState2;->x:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 29
    const-string v0, "x"

    iget v1, p0, Lexam/activity/SaveState2;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    return-void
.end method
