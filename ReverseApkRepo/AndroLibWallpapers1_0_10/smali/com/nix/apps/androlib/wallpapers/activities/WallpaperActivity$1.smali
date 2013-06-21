.class Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;
.super Landroid/os/Handler;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    .line 384
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 426
    .end local p0
    :goto_0
    :sswitch_0
    return-void

    .line 391
    .restart local p0
    :sswitch_1
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    const v1, 0x7f04000c

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 392
    new-instance v5, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1$1;

    invoke-direct {v5, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1$1;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;)V

    move v4, v3

    .line 391
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 403
    :sswitch_2
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 408
    :sswitch_3
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->mDialog:Landroid/app/ProgressDialog;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 413
    .restart local p0
    :sswitch_4
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    .restart local p0
    :sswitch_5
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->finish()V

    goto :goto_0

    .line 387
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_0
        0xf423f -> :sswitch_5
    .end sparse-switch
.end method
