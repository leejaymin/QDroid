.class public Lexam/Input/MemoryPower2;
.super Landroid/app/Activity;
.source "MemoryPower2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Input/MemoryPower2$GameView;,
        Lexam/Input/MemoryPower2$Shape;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MemoryPower"


# instance fields
.field gv:Lexam/Input/MemoryPower2$GameView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lexam/Input/MemoryPower2$GameView;

    invoke-direct {v0, p0, p0}, Lexam/Input/MemoryPower2$GameView;-><init>(Lexam/Input/MemoryPower2;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Input/MemoryPower2;->gv:Lexam/Input/MemoryPower2$GameView;

    .line 20
    iget-object v0, p0, Lexam/Input/MemoryPower2;->gv:Lexam/Input/MemoryPower2$GameView;

    invoke-virtual {p0, v0}, Lexam/Input/MemoryPower2;->setContentView(Landroid/view/View;)V

    .line 21
    const-string v0, "MemoryPower"

    const-string v1, "Game Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method
