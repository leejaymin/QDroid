.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$3;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 167
    :try_start_0
    const-string v2, "collage"

    const-string v3, ".jpg"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 168
    .local v1, f:Ljava/io/File;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->usedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 169
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spritefish/fastburstcamera/activities/helper/ShareHelper;->launchShareSinglePicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
