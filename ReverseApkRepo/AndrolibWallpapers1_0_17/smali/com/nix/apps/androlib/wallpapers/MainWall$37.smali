.class Lcom/nix/apps/androlib/wallpapers/MainWall$37;
.super Ljava/lang/Thread;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

.field private final synthetic val$p:I

.field private final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$37;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iput p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$37;->val$p:I

    iput-object p3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$37;->val$query:Ljava/lang/String;

    .line 989
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$37;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$37;->val$p:I

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$37;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearchThread(ILjava/lang/String;)V

    return-void
.end method
