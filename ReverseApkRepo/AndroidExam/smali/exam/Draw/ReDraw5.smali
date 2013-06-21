.class public Lexam/Draw/ReDraw5;
.super Landroid/app/Activity;
.source "ReDraw5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Draw/ReDraw5$MyView;,
        Lexam/Draw/ReDraw5$Vertex;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lexam/Draw/ReDraw5$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Draw/ReDraw5$MyView;-><init>(Lexam/Draw/ReDraw5;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lexam/Draw/ReDraw5;->setContentView(Landroid/view/View;)V

    .line 16
    return-void
.end method
