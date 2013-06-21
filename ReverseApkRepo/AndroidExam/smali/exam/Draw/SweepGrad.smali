.class public Lexam/Draw/SweepGrad;
.super Landroid/app/Activity;
.source "SweepGrad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Draw/SweepGrad$MyView;
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
    new-instance v0, Lexam/Draw/SweepGrad$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Draw/SweepGrad$MyView;-><init>(Lexam/Draw/SweepGrad;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lexam/Draw/SweepGrad;->setContentView(Landroid/view/View;)V

    .line 13
    return-void
.end method
