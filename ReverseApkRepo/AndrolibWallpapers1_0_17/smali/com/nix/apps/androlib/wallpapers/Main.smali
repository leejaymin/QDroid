.class public Lcom/nix/apps/androlib/wallpapers/Main;
.super Lmagmamobile/app/SplashActivity;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {p0, v0}, Lmagmamobile/app/SplashActivity;-><init>(Ljava/lang/Class;)V

    .line 8
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/nix/apps/androlib/wallpapers/Main;->setDuration(I)V

    .line 9
    return-void
.end method
