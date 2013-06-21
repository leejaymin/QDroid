.class Lcom/nix/apps/androlib/wallpapers/MainWall$30;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpaperDetail()V
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$30;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)Lcom/nix/apps/androlib/wallpapers/MainWall;
    .locals 1
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$30;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const v5, 0x7f040019

    const v4, 0x7f040018

    const/4 v3, 0x1

    .line 537
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->IsFav:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$30;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 541
    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 542
    const v1, 0x7f040020

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 543
    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$30$1;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$30$2;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30$2;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 577
    :goto_0
    return-void

    .line 558
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$30;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    .restart local v0       #ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 560
    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 561
    const v1, 0x7f040021

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$30$3;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30$3;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    invoke-static {v5}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/MainWall$30$4;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$30$4;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$30;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
