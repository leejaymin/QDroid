.class public Lexam/Draw/Rotate;
.super Landroid/app/Activity;
.source "Rotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Draw/Rotate$MyView;
    }
.end annotation


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
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v0, Lexam/Draw/Rotate$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Draw/Rotate$MyView;-><init>(Lexam/Draw/Rotate;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lexam/Draw/Rotate;->setContentView(Landroid/view/View;)V

    .line 13
    return-void
.end method
