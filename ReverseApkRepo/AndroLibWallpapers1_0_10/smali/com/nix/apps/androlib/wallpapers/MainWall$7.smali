.class Lcom/nix/apps/androlib/wallpapers/MainWall$7;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$7;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$7;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const-class v2, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$7;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
