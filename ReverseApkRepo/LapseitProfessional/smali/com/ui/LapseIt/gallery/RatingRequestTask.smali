.class public Lcom/ui/LapseIt/gallery/RatingRequestTask;
.super Landroid/os/AsyncTask;
.source "RatingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;",
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

.field private mRating:F

.field private mRatingListener:Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "http://www.lapseit.com/php/rating.php"

    sput-object v0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->QUERY_URL:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;JF)V
    .locals 0
    .parameter "reportListener"
    .parameter "galleryId"
    .parameter "rating"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRatingListener:Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;

    .line 43
    iput-wide p2, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mGalleryId:J

    .line 44
    iput p4, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRating:F

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/RatingRequestTask;->doInBackground([Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter "params"

    .prologue
    .line 60
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 62
    .local v2, mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    iget-wide v5, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mGalleryId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, galleryIdBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    iget v5, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRating:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, ratingBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v5, "galleryId"

    invoke-virtual {v2, v5, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 66
    const-string v5, "rating"

    invoke-virtual {v2, v5, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 68
    iget-object v5, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #galleryIdBody:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v2           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v3           #ratingBody:Lorg/apache/http/entity/mime/content/ContentBody;
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    iget-object v6, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 82
    :goto_1
    return-object v4

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 82
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 79
    :catch_2
    move-exception v0

    .line 80
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

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/RatingRequestTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 92
    .local v1, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, resultBody:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, resultId:I
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRatingListener:Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;

    invoke-interface {v4, v3}, Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;->onRatingResult(I)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    .end local v1           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #resultBody:Ljava/lang/String;
    .end local v3           #resultId:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 112
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 101
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRatingListener:Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;

    invoke-interface {v4, v5}, Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;->onRatingResult(I)V

    goto :goto_0

    .line 102
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRatingListener:Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;

    invoke-interface {v4, v5}, Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;->onRatingResult(I)V

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->mRatingListener:Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;

    invoke-interface {v4, v5}, Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;->onRatingResult(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 51
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 52
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 54
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v1, Lcom/ui/LapseIt/gallery/RatingRequestTask;->QUERY_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/RatingRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 55
    return-void
.end method
