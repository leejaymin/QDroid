.class public Lexam/Output/DrawPath;
.super Landroid/app/Activity;
.source "DrawPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Output/DrawPath$MyView;
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
    new-instance v0, Lexam/Output/DrawPath$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Output/DrawPath$MyView;-><init>(Lexam/Output/DrawPath;Landroid/content/Context;)V

    .line 13
    .local v0, vw:Lexam/Output/DrawPath$MyView;
    invoke-virtual {p0, v0}, Lexam/Output/DrawPath;->setContentView(Landroid/view/View;)V

    .line 14
    return-void
.end method