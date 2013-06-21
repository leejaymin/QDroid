.class public Lexam/Draw/BitmapSdr;
.super Landroid/app/Activity;
.source "BitmapSdr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Draw/BitmapSdr$MyView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Lexam/Draw/BitmapSdr$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Draw/BitmapSdr$MyView;-><init>(Lexam/Draw/BitmapSdr;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lexam/Draw/BitmapSdr;->setContentView(Landroid/view/View;)V

    .line 15
    return-void
.end method
