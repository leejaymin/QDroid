.class Lcom/nix/apps/androlib/wallpapers/MainWall$19;
.super Ljava/lang/Thread;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$19;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$19;->val$p:I

    .line 485
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$19;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$19;->val$p:I

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchLastWallpapersThread(I)V

    return-void
.end method