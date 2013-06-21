.class public Lcom/ui/LapseIt/upload/UploadService;
.super Landroid/app/IntentService;
.source "UploadService.java"


# static fields
.field public static NOTIFICATION_ID:I

.field private static uploadURL:Ljava/lang/String;


# instance fields
.field private desc:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private notification:Landroid/app/Notification;

.field private notificationIntent:Landroid/content/Intent;

.field private notificationManager:Landroid/app/NotificationManager;

.field private pendingIntent:Landroid/app/PendingIntent;

.field postFacebook:Z

.field progressListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;

.field private title:Ljava/lang/String;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "http://www.lapseit.com/upload/galleryUpload.php"

    sput-object v0, Lcom/ui/LapseIt/upload/UploadService;->uploadURL:Ljava/lang/String;

    .line 175
    const/16 v0, 0x1f6

    sput v0, Lcom/ui/LapseIt/upload/UploadService;->NOTIFICATION_ID:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "LapseItUpload"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/ui/LapseIt/upload/UploadService$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadService$1;-><init>(Lcom/ui/LapseIt/upload/UploadService;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadService;->progressListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "tickerText"
    .parameter "renderedText"
    .parameter "galleryUri"

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 185
    .local v0, when:J
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/upload/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationManager:Landroid/app/NotificationManager;

    .line 187
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02004e

    invoke-direct {v2, v3, p1, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notification:Landroid/app/Notification;

    .line 189
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 190
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Video URL is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationIntent:Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationIntent:Landroid/content/Intent;

    const-string v3, "text/html"

    invoke-virtual {v2, p3, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 203
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationIntent:Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->pendingIntent:Landroid/app/PendingIntent;

    .line 205
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p0, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 207
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationManager:Landroid/app/NotificationManager;

    sget v3, Lcom/ui/LapseIt/upload/UploadService;->NOTIFICATION_ID:I

    iget-object v4, p0, Lcom/ui/LapseIt/upload/UploadService;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 208
    return-void

    .line 194
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 195
    const-string v2, "trace"

    const-string v3, "Upload failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string v3, "noactionrequiered"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationIntent:Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 199
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "noactionrequiered"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notificationIntent:Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "userId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ui/LapseIt/upload/UploadService;->userId:I

    .line 52
    const-string v2, "filePath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->filePath:Ljava/lang/String;

    .line 54
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->title:Ljava/lang/String;

    .line 55
    const-string v2, "desc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->desc:Ljava/lang/String;

    .line 57
    const-string v2, "postFacebook"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ui/LapseIt/upload/UploadService;->postFacebook:Z

    .line 59
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start uploading the file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ui/LapseIt/upload/UploadService;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadService;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/upload/UploadService;->uploadToURL(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "Uploading failed"

    const-string v3, "Network is unreachable, please try again !"

    const-string v4, ""

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Uploading failed"

    const-string v3, "Network is unreachable, please try again !"

    const-string v4, ""

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Uploading failed"

    const-string v3, "Network is unreachable, please try again !"

    const-string v4, ""

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadToURL(Ljava/lang/String;)V
    .locals 24
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 91
    .local v13, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.protocol.version"

    sget-object v23, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 93
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    sget-object v21, Lcom/ui/LapseIt/upload/UploadService;->uploadURL:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 94
    .local v14, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v10, file:Ljava/io/File;
    invoke-static/range {p1 .. p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, extension:Ljava/lang/String;
    const-string v21, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-gez v21, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    .line 99
    :cond_0
    const-string v21, "\\."

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, extArray:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v7, v8, v21

    .line 101
    .local v7, ext:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 102
    move-object v9, v7

    .line 106
    .end local v7           #ext:Ljava/lang/String;
    .end local v8           #extArray:[Ljava/lang/String;
    :cond_1
    new-instance v15, Lcom/ui/LapseIt/upload/UploadEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadService;->progressListener:Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/ui/LapseIt/upload/UploadEntity;-><init>(Lcom/ui/LapseIt/upload/UploadEntity$UploadProgressListener;)V

    .line 107
    .local v15, mpEntity:Lcom/ui/LapseIt/upload/UploadEntity;
    new-instance v4, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "video/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v10, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v4, cbFile:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v21, "Filedata"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v4}, Lcom/ui/LapseIt/upload/UploadEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 110
    new-instance v19, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadService;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 111
    .local v19, titleBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v21, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/ui/LapseIt/upload/UploadEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 113
    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/upload/UploadService;->desc:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, descBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v21, "desc"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v5}, Lcom/ui/LapseIt/upload/UploadEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 116
    new-instance v20, Lorg/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/upload/UploadService;->userId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 117
    .local v20, userIdBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v21, "userId"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/ui/LapseIt/upload/UploadEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 119
    const-string v21, "trace"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "User Id do upload \u00e9 "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/upload/UploadService;->userId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 122
    const-string v21, "trace"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Executing request "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPost;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v13, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 124
    .local v17, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 126
    .local v16, resEntity:Lorg/apache/http/HttpEntity;
    const/16 v18, 0x0

    .line 127
    .local v18, resultBody:I
    if-eqz v16, :cond_2

    .line 129
    :try_start_0
    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 134
    :cond_2
    :goto_0
    if-eqz v16, :cond_3

    .line 135
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 138
    :cond_3
    move/from16 v11, v18

    .line 139
    .local v11, finalResult:I
    const-string v21, "trace"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Upload result is "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v11, :cond_5

    .line 142
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "http://www.lapseit.com/gallery/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 143
    .local v12, galleryUri:Landroid/net/Uri;
    const-string v21, "Video uploaded successfully"

    const-string v22, "Tap to go to your video in Lapse It Gallery"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v12}, Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ui/LapseIt/upload/UploadService;->postFacebook:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 146
    const-string v21, "trace"

    const-string v22, "Posting on facebook"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/ui/LapseIt/upload/UploadService$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/ui/LapseIt/upload/UploadService$2;-><init>(Lcom/ui/LapseIt/upload/UploadService;Landroid/net/Uri;)V

    invoke-direct/range {v21 .. v22}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 172
    .end local v12           #galleryUri:Landroid/net/Uri;
    :cond_4
    :goto_1
    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 173
    return-void

    .line 130
    .end local v11           #finalResult:I
    :catch_0
    move-exception v6

    .line 131
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v11       #finalResult:I
    :cond_5
    const-string v21, "Video upload failed"

    const-string v22, "Please try again"

    const-string v23, ""

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/ui/LapseIt/upload/UploadService;->createProgressNotification(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method
