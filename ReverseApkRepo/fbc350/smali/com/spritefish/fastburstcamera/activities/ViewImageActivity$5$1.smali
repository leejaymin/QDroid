.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

.field private final synthetic val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;->val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, share:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->currentPicture:Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 305
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;->this$1:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;

    #getter for: Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;->access$0(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5;)Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    move-result-object v3

    const v4, 0x7f07009f

    invoke-virtual {v3, v4}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 308
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$5$1;->val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->dismiss()V

    .line 309
    return-void
.end method
