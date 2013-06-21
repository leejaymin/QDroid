.class Lcom/nix/apps/androlib/wallpapers/MainWall$21;
.super Ljava/lang/Thread;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthor(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

.field private final synthetic val$id:Ljava/lang/String;

.field private final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$21;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$21;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$21;->val$p:I

    .line 564
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$21;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$21;->val$id:Ljava/lang/String;

    iget v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$21;->val$p:I

    invoke-virtual {v0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchAuthorThread(Ljava/lang/String;I)V

    return-void
.end method
