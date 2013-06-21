.class public Lexam/Draw/EmbossFlt;
.super Landroid/app/Activity;
.source "EmbossFlt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Draw/EmbossFlt$MyView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lexam/Draw/EmbossFlt$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Draw/EmbossFlt$MyView;-><init>(Lexam/Draw/EmbossFlt;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lexam/Draw/EmbossFlt;->setContentView(Landroid/view/View;)V

    .line 14
    return-void
.end method
