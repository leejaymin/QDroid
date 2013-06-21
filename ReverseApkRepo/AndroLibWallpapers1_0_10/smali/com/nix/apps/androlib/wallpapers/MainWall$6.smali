.class Lcom/nix/apps/androlib/wallpapers/MainWall$6;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$6;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchSearch()V

    .line 219
    const/4 v0, 0x1

    return v0
.end method
