.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$1;
.super Ljava/lang/Object;
.source "GifAnimationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, f:Ljava/io/File;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchShareSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 105
    return-void
.end method
