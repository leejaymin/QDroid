.class Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "UploadEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private _wrappedOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadEntity;

.field private transferred:J


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/upload/UploadEntity;Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .parameter "out"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->this$0:Lcom/ui/LapseIt/upload/UploadEntity;

    .line 44
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->transferred:J

    .line 45
    iput-object p2, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->_wrappedOutputStream:Ljava/io/OutputStream;

    .line 46
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 57
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->_wrappedOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    iget-wide v0, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->transferred:J

    .line 52
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->this$0:Lcom/ui/LapseIt/upload/UploadEntity;

    #getter for: Lcom/ui/LapseIt/upload/UploadEntity;->uploadListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;
    invoke-static {v0}, Lcom/ui/LapseIt/upload/UploadEntity;->access$0(Lcom/ui/LapseIt/upload/UploadEntity;)Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->transferred:J

    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;->this$0:Lcom/ui/LapseIt/upload/UploadEntity;

    invoke-virtual {v3}, Lcom/ui/LapseIt/upload/UploadEntity;->getContentLength()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;->setProgress(JJ)V

    .line 53
    return-void
.end method
