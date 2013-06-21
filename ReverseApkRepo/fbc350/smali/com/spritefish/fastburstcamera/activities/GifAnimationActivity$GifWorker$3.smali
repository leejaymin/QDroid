.class Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;
.super Ljava/lang/Object;
.source "GifAnimationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$h:I

.field private final synthetic val$tmpPath:Ljava/lang/String;

.field private final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;Ljava/lang/String;IILjava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$tmpPath:Ljava/lang/String;

    iput p3, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$w:I

    iput p4, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$h:I

    iput-object p5, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$f:Ljava/io/File;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 306
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 307
    .local v2, html:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html ><body bgcolor=\"#000000\"><div style=\"text-align:center\"><img width=\"90%\" src=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v1

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->usedFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></div></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$tmpPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->this$1:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;

    #getter for: Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker;)Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;

    move-result-object v0

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 312
    .local v6, statusText:Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$w:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/GifAnimationActivity$GifWorker$3;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/spritefish/camera/Util;->filesizeToMb(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method
