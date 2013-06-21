.class public Lcom/ui/LapseIt/gallery/VisitRequestTask;
.super Landroid/os/AsyncTask;
.source "VisitRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static QUERY_URL:Ljava/lang/String;


# instance fields
.field private httpclient:Lorg/apache/http/client/HttpClient;

.field private httppost:Lorg/apache/http/client/methods/HttpPost;

.field private mGalleryId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "http://www.lapseit.com/php/visits.php"

    sput-object v0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->QUERY_URL:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "galleryId"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->mGalleryId:J

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/VisitRequestTask;->doInBackground([Ljava/lang/Void;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter "params"

    .prologue
    .line 48
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 50
    .local v2, mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    iget-wide v4, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->mGalleryId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, galleryIdBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v4, "galleryId"

    invoke-virtual {v2, v4, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 54
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #galleryIdBody:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v2           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    iget-object v5, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 68
    :goto_1
    return-object v3

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 68
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 65
    :catch_2
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/VisitRequestTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 75
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 78
    .local v1, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, resultBody:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, resultId:I
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Visits result is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #resultBody:Ljava/lang/String;
    .end local v3           #resultId:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 89
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 39
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 40
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 42
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v1, Lcom/ui/LapseIt/gallery/VisitRequestTask;->QUERY_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/VisitRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 43
    return-void
.end method
