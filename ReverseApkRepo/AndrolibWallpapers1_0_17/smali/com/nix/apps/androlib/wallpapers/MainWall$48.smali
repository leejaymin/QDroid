.class Lcom/nix/apps/androlib/wallpapers/MainWall$48;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->downloadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$48;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 1944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$48;)Lcom/nix/apps/androlib/wallpapers/MainWall;
    .locals 1
    .parameter

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$48;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1946
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$48;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const v2, 0x7f04002a

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1947
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$48$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$48$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$48;)V

    .line 1950
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1951
    return-void
.end method
