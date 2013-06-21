.class public Lexam/Input/MoveCircle;
.super Landroid/app/Activity;
.source "MoveCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Input/MoveCircle$MyView;
    }
.end annotation


# instance fields
.field private vw:Lexam/Input/MoveCircle$MyView;


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
    const/4 v1, 0x1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Lexam/Input/MoveCircle$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Input/MoveCircle$MyView;-><init>(Lexam/Input/MoveCircle;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Input/MoveCircle;->vw:Lexam/Input/MoveCircle$MyView;

    .line 15
    iget-object v0, p0, Lexam/Input/MoveCircle;->vw:Lexam/Input/MoveCircle$MyView;

    invoke-virtual {v0, v1}, Lexam/Input/MoveCircle$MyView;->setFocusable(Z)V

    .line 16
    iget-object v0, p0, Lexam/Input/MoveCircle;->vw:Lexam/Input/MoveCircle$MyView;

    invoke-virtual {v0, v1}, Lexam/Input/MoveCircle$MyView;->setFocusableInTouchMode(Z)V

    .line 17
    iget-object v0, p0, Lexam/Input/MoveCircle;->vw:Lexam/Input/MoveCircle$MyView;

    invoke-virtual {p0, v0}, Lexam/Input/MoveCircle;->setContentView(Landroid/view/View;)V

    .line 18
    return-void
.end method
