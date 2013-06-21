.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$4;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, share:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 277
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    const-string v3, "Share Photo"

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method
