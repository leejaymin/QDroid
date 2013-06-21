.class Lcom/nix/apps/androlib/wallpapers/MainWall$30$2;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall$30;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$30;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$30$2;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$30;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$30$2;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$30;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$30;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 554
    return-void
.end method
