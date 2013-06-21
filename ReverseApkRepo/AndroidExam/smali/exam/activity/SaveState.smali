.class public Lexam/activity/SaveState;
.super Landroid/app/Activity;
.source "SaveState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/activity/SaveState$MyView;
    }
.end annotation


# instance fields
.field private vw:Lexam/activity/SaveState$MyView;

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
    const/16 v0, 0x32

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    iput v0, p0, Lexam/activity/SaveState;->x:I

    .line 18
    iput v0, p0, Lexam/activity/SaveState;->y:I

    .line 19
    new-instance v0, Lexam/activity/SaveState$MyView;

    invoke-direct {v0, p0, p0}, Lexam/activity/SaveState$MyView;-><init>(Lexam/activity/SaveState;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/activity/SaveState;->vw:Lexam/activity/SaveState$MyView;

    .line 20
    iget-object v0, p0, Lexam/activity/SaveState;->vw:Lexam/activity/SaveState$MyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lexam/activity/SaveState$MyView;->setFocusable(Z)V

    .line 21
    iget-object v0, p0, Lexam/activity/SaveState;->vw:Lexam/activity/SaveState$MyView;

    invoke-virtual {p0, v0}, Lexam/activity/SaveState;->setContentView(Landroid/view/View;)V

    .line 22
    return-void
.end method
