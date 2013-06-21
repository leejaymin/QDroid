.class public Lexam/Input/MemoryPower;
.super Landroid/app/Activity;
.source "MemoryPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Input/MemoryPower$GameView;,
        Lexam/Input/MemoryPower$Shape;
    }
.end annotation


# instance fields
.field gv:Lexam/Input/MemoryPower$GameView;


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
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lexam/Input/MemoryPower$GameView;

    invoke-direct {v0, p0, p0}, Lexam/Input/MemoryPower$GameView;-><init>(Lexam/Input/MemoryPower;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Input/MemoryPower;->gv:Lexam/Input/MemoryPower$GameView;

    .line 18
    iget-object v0, p0, Lexam/Input/MemoryPower;->gv:Lexam/Input/MemoryPower$GameView;

    invoke-virtual {p0, v0}, Lexam/Input/MemoryPower;->setContentView(Landroid/view/View;)V

    .line 19
    return-void
.end method
