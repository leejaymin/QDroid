.class public Lcom/ui/services/UploaderService;
.super Landroid/app/Service;
.source "UploaderService.java"


# static fields
.field public static UPLOADER_SERVICE:I


# instance fields
.field boundary:Ljava/lang/String;

.field buffer:[B

.field bufferSize:I

.field bytesAvailable:I

.field bytesRead:I

.field bytesTotal:I

.field connection:Ljava/net/HttpURLConnection;

.field fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/content/Intent;

.field inputStream:Ljava/io/DataInputStream;

.field lineEnd:Ljava/lang/String;

.field maxBufferSize:I

.field nManager:Landroid/app/NotificationManager;

.field notification:Landroid/app/Notification;

.field outputStream:Ljava/io/DataOutputStream;

.field params:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestURL:Ljava/net/URL;

.field runnable:Ljava/lang/Runnable;

.field twoHyphens:Ljava/lang/String;

.field uploadThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    sput v0, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const-string v0, "\n"

    iput-object v0, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    .line 47
    const-string v0, "*****************"

    iput-object v0, p0, Lcom/ui/services/UploaderService;->boundary:Ljava/lang/String;

    .line 48
    const-string v0, "--"

    iput-object v0, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    .line 51
    const v0, 0xc800

    iput v0, p0, Lcom/ui/services/UploaderService;->maxBufferSize:I

    .line 106
    new-instance v0, Lcom/ui/services/UploaderService$1;

    invoke-direct {v0, p0}, Lcom/ui/services/UploaderService$1;-><init>(Lcom/ui/services/UploaderService;)V

    iput-object v0, p0, Lcom/ui/services/UploaderService;->runnable:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method private completedNotification()V
    .locals 5

    .prologue
    .line 236
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    .line 237
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    const v2, 0x1080089

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 238
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    const-string v2, "Upload completed"

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 239
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 241
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ui/LapseIt/StartView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/services/UploaderService;->i:Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    iget-object v3, p0, Lcom/ui/services/UploaderService;->i:Landroid/content/Intent;

    const/high16 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 245
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Upload completed ..."

    const-string v4, "Filename?"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 247
    iget-object v1, p0, Lcom/ui/services/UploaderService;->nManager:Landroid/app/NotificationManager;

    sget v2, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    iget-object v3, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 248
    return-void
.end method

.method private createNotification()V
    .locals 5

    .prologue
    .line 206
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    .line 207
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    const v2, 0x1080088

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 208
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    const-string v2, "Starting send files ..."

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 209
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 211
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ui/LapseIt/StartView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/services/UploaderService;->i:Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    iget-object v3, p0, Lcom/ui/services/UploaderService;->i:Landroid/content/Intent;

    const/high16 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 215
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Uploading files ..."

    const-string v4, "Filename?"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 217
    iget-object v1, p0, Lcom/ui/services/UploaderService;->nManager:Landroid/app/NotificationManager;

    sget v2, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    iget-object v3, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 218
    return-void
.end method

.method public static createService(Landroid/content/Context;Ljava/net/URL;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "c"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ui/services/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    const-string v1, "fileList"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    const-string v1, "params"

    new-instance v2, Lui/utils/URLVariables;

    invoke-direct {v2}, Lui/utils/URLVariables;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method public static createService(Landroid/content/Context;Ljava/net/URL;Ljava/util/ArrayList;Lui/utils/URLVariables;)V
    .locals 2
    .parameter "c"
    .parameter "url"
    .parameter
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lui/utils/URLVariables;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ui/services/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    const-string v1, "fileList"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    const-string v1, "params"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method private updateNotification(Ljava/lang/String;II)V
    .locals 5
    .parameter "filename"
    .parameter "bytesLoaded"
    .parameter "bytesTotal"

    .prologue
    .line 221
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    .line 222
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    const v2, 0x1080088

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 223
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Uploading file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 224
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 226
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/ui/LapseIt/StartView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ui/services/UploaderService;->i:Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    iget-object v3, p0, Lcom/ui/services/UploaderService;->i:Landroid/content/Intent;

    const/high16 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 230
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Uploading files ..."

    const-string v4, "Filename?"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 232
    iget-object v1, p0, Lcom/ui/services/UploaderService;->nManager:Landroid/app/NotificationManager;

    sget v2, Lcom/ui/services/UploaderService;->UPLOADER_SERVICE:I

    iget-object v3, p0, Lcom/ui/services/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 233
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ui/services/UploaderService;->runnable:Ljava/lang/Runnable;

    const-string v2, "UploaderService"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ui/services/UploaderService;->uploadThread:Ljava/lang/Thread;

    .line 78
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/ui/services/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/ui/services/UploaderService;->nManager:Landroid/app/NotificationManager;

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "trace"

    const-string v1, "UploaderService destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 259
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/ui/services/UploaderService;->createNotification()V

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 90
    .local v2, uploadInfo:Landroid/os/Bundle;
    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    iput-object v3, p0, Lcom/ui/services/UploaderService;->requestURL:Ljava/net/URL;

    .line 91
    const-string v3, "params"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 92
    .local v1, paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/ui/services/UploaderService;->params:Ljava/util/Hashtable;

    .line 93
    const-string v3, "fileList"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/ui/services/UploaderService;->fileList:Ljava/util/ArrayList;

    .line 95
    iget-object v3, p0, Lcom/ui/services/UploaderService;->uploadThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1           #paramsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #uploadInfo:Landroid/os/Bundle;
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 104
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadFiles()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 121
    iget-object v10, p0, Lcom/ui/services/UploaderService;->requestURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    iput-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    .line 123
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 124
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 126
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Connection"

    const-string v12, "Keep-Alive"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Content-Type"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "multipart/form-data;boundary="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/ui/services/UploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v10, Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    .line 132
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v10, p0, Lcom/ui/services/UploaderService;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_0

    .line 166
    iget-object v10, p0, Lcom/ui/services/UploaderService;->params:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 168
    .local v4, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_2

    .line 183
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 184
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 186
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 187
    .local v7, serverResponseCode:I
    iget-object v10, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, serverResponseMessage:Ljava/lang/String;
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_4

    .line 191
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    .local v6, reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/ui/services/UploaderService;->completedNotification()V

    .line 199
    invoke-virtual {p0}, Lcom/ui/services/UploaderService;->stopSelf()V

    .line 203
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :goto_3
    return-void

    .line 133
    .end local v4           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v7           #serverResponseCode:I
    .end local v8           #serverResponseMessage:Ljava/lang/String;
    :cond_0
    const-string v11, "trace"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "Uploading file "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/ui/services/UploaderService;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/ui/services/UploaderService;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 136
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/services/UploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 137
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "Content-Disposition: form-data;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 138
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "name=\"Filedata"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 139
    iget-object v11, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "filename=\""

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/ui/services/UploaderService;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 140
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 141
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "ContentType:application/octetstream;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 142
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bytesAvailable:I

    .line 145
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bytesTotal:I

    .line 146
    iget v10, p0, Lcom/ui/services/UploaderService;->bytesAvailable:I

    iget v11, p0, Lcom/ui/services/UploaderService;->maxBufferSize:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bufferSize:I

    .line 147
    iget v10, p0, Lcom/ui/services/UploaderService;->bufferSize:I

    new-array v0, v10, [B

    .line 149
    .local v0, buffer:[B
    iget v10, p0, Lcom/ui/services/UploaderService;->bufferSize:I

    invoke-virtual {v1, v0, v14, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bytesRead:I

    .line 150
    :goto_4
    iget v10, p0, Lcom/ui/services/UploaderService;->bytesRead:I

    if-gtz v10, :cond_1

    .line 159
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 160
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/services/UploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 161
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 151
    :cond_1
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget v11, p0, Lcom/ui/services/UploaderService;->bufferSize:I

    invoke-virtual {v10, v0, v14, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 152
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bytesAvailable:I

    .line 153
    iget v10, p0, Lcom/ui/services/UploaderService;->bytesAvailable:I

    iget v11, p0, Lcom/ui/services/UploaderService;->maxBufferSize:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bufferSize:I

    .line 154
    iget v10, p0, Lcom/ui/services/UploaderService;->bufferSize:I

    invoke-virtual {v1, v0, v14, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    iput v10, p0, Lcom/ui/services/UploaderService;->bytesRead:I

    .line 156
    iget-object v10, p0, Lcom/ui/services/UploaderService;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/ui/services/UploaderService;->bytesTotal:I

    iget v12, p0, Lcom/ui/services/UploaderService;->bytesAvailable:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/ui/services/UploaderService;->bytesTotal:I

    invoke-direct {p0, v10, v11, v12}, Lcom/ui/services/UploaderService;->updateNotification(Ljava/lang/String;II)V

    goto :goto_4

    .line 169
    .end local v0           #buffer:[B
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/ui/services/UploaderService;->params:Ljava/util/Hashtable;

    invoke-virtual {v10, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 172
    .local v9, val:Ljava/lang/String;
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/services/UploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 173
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "Content-Disposition: form-data;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 174
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "name=\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 175
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "ContentType:application/octetstream;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 176
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 177
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 178
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 179
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/services/UploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/services/UploaderService;->twoHyphens:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 180
    iget-object v10, p0, Lcom/ui/services/UploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/services/UploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    .end local v3           #key:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/String;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #serverResponseCode:I
    .restart local v8       #serverResponseMessage:Ljava/lang/String;
    :cond_3
    const-string v10, "trace"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 201
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_4
    const-string v10, "trace"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Upload error "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
