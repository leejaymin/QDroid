.class Lcom/ui/LapseIt/upload/UploadService$1;
.super Ljava/lang/Object;
.source "UploadService.java"

# interfaces
.implements Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadService;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadService$1;->this$0:Lcom/ui/LapseIt/upload/UploadService;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(JJ)V
    .locals 9
    .parameter "transferred"
    .parameter "bytesTotal"

    .prologue
    const-wide/16 v7, 0x400

    const/4 v6, 0x0

    const/high16 v4, 0x42c8

    .line 78
    long-to-float v1, p1

    long-to-float v2, p3

    div-float v0, v1, v2

    .line 79
    .local v0, perc:F
    mul-float v1, v0, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadService$1;->this$0:Lcom/ui/LapseIt/upload/UploadService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uploading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v3, v0, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    div-long v4, p1, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, p3, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kbytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v1, v2, v3, v6}, Lcom/ui/LapseIt/upload/UploadService;->access$0(Lcom/ui/LapseIt/upload/UploadService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadService$1;->this$0:Lcom/ui/LapseIt/upload/UploadService;

    const-string v2, "Encoding and registering"

    const-string v3, "Your video will be available soon"

    #calls: Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    invoke-static {v1, v2, v3, v6}, Lcom/ui/LapseIt/upload/UploadService;->access$0(Lcom/ui/LapseIt/upload/UploadService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
