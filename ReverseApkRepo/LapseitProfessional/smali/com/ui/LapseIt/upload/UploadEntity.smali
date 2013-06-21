.class public Lcom/ui/LapseIt/upload/UploadEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "UploadEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;,
        Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;
    }
.end annotation


# instance fields
.field private _lastOutputStream:Ljava/io/OutputStream;

.field private _outputStream:Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;

.field private uploadListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 23
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 24
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadEntity;->uploadListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadEntity;)Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity;->uploadListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;

    return-object v0
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity;->_lastOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity;->_lastOutputStream:Ljava/io/OutputStream;

    if-eq v0, p1, :cond_1

    .line 30
    :cond_0
    const-string v0, "trace"

    const-string v1, "Creating outputstream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadEntity;->_lastOutputStream:Ljava/io/OutputStream;

    .line 32
    new-instance v0, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;-><init>(Lcom/ui/LapseIt/upload/UploadEntity;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity;->_outputStream:Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadEntity;->_outputStream:Lcom/ui/LapseIt/upload/UploadEntity$CountingOutputStream;

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 36
    return-void
.end method
