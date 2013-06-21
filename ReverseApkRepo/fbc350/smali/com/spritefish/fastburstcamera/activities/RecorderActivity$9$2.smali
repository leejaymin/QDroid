.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$2;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->OnCameraInitialized(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 716
    .local v0, intentSettings:Landroid/content/Intent;
    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9$2;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$9;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 718
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 719
    return-void
.end method
