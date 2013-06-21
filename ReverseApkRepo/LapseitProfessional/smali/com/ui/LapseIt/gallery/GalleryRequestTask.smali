.class public Lcom/ui/LapseIt/gallery/GalleryRequestTask;
.super Landroid/os/AsyncTask;
.source "GalleryRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;
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
.field private static synthetic $SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryListView$SORT_MODE:[I

.field private static QUERY_URL:Ljava/lang/String;


# instance fields
.field private httpclient:Lorg/apache/http/client/HttpClient;

.field private httppost:Lorg/apache/http/client/methods/HttpPost;

.field private mGalleryListener:Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;

.field private mUserId:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryListView$SORT_MODE()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->$SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryListView$SORT_MODE:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->values()[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->BEST_RATED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->MOST_VIEWED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->$SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryListView$SORT_MODE:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "http://www.lapseit.com/php/getGalleryApp.php"

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->QUERY_URL:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;)V
    .locals 0
    .parameter "reportListener"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->mGalleryListener:Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;I)V
    .locals 0
    .parameter "reportListener"
    .parameter "userId"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->mGalleryListener:Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;

    .line 48
    iput p2, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->mUserId:I

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->doInBackground([Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter "params"

    .prologue
    .line 64
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 66
    .local v2, mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v6, "rating_avg"

    invoke-direct {v3, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v6, "desc"

    invoke-direct {v4, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    invoke-static {}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->$SWITCH_TABLE$com$ui$LapseIt$gallery$GalleryListView$SORT_MODE()[I

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 94
    :goto_0
    const-string v6, "orderBy"

    invoke-virtual {v2, v6, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 95
    const-string v6, "orderMode"

    invoke-virtual {v2, v6, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 97
    iget-object v6, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v3           #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v4           #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    iget-object v7, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 111
    :goto_2
    return-object v5

    .line 71
    .restart local v2       #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v3       #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    .restart local v4       #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    :pswitch_0
    :try_start_2
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v3           #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "rating_avg"

    invoke-direct {v3, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v3       #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v4           #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "desc"

    invoke-direct {v4, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v4       #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v3           #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "visits"

    invoke-direct {v3, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v3       #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v4           #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "desc"

    invoke-direct {v4, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v4       #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    goto :goto_0

    .line 81
    :pswitch_2
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v3           #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "datetime"

    invoke-direct {v3, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v3       #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v4           #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "desc"

    invoke-direct {v4, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v4       #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    goto :goto_0

    .line 86
    :pswitch_3
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v3           #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "datetime"

    invoke-direct {v3, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v3       #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    .end local v4           #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "desc"

    invoke-direct {v4, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v4       #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    iget v6, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->mUserId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, fromUserBody:Lorg/apache/http/entity/mime/content/ContentBody;
    const-string v6, "fromUser"

    invoke-virtual {v2, v6, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 98
    .end local v1           #fromUserBody:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v2           #mpEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v3           #orderByBody:Lorg/apache/http/entity/mime/content/ContentBody;
    .end local v4           #orderModeBody:Lorg/apache/http/entity/mime/content/ContentBody;
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 111
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 108
    :catch_2
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 118
    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 121
    .local v1, resEntity:Lorg/apache/http/HttpEntity;
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, resultBody:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 124
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, resultJSON:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->mGalleryListener:Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;

    invoke-interface {v4, v3}, Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;->onGalleryResult(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    .end local v1           #resEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #resultBody:Ljava/lang/String;
    .end local v3           #resultJSON:Lorg/json/JSONArray;
    :goto_0
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 138
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 131
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->mGalleryListener:Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/ui/LapseIt/gallery/GalleryRequestTask$GalleryResultListener;->onGalleryResult(Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 55
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 56
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 58
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->QUERY_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryRequestTask;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 59
    return-void
.end method
