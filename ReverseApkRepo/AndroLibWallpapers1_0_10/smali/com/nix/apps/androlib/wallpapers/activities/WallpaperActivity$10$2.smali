.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$2;
.super Ljava/lang/Object;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$2;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10$2;->this$1:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;)Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    move-result-object v0

    const v1, 0x7f040019

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    return-void
.end method
