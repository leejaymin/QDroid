.class public Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;
.super Landroid/os/AsyncTask;
.source "ShoutemApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shoutem/n64635/ShoutemApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHttp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private client:Lorg/apache/http/client/HttpClient;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field final synthetic this$0:Lcom/shoutem/n64635/ShoutemApp;


# direct methods
.method public constructor <init>(Lcom/shoutem/n64635/ShoutemApp;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .parameter
    .parameter "client"
    .parameter "request"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->this$0:Lcom/shoutem/n64635/ShoutemApp;

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->client:Lorg/apache/http/client/HttpClient;

    .line 40
    iput-object p3, p0, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->client:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 47
    .local v1, response:Lorg/apache/http/HttpResponse;
    const-string v2, "resp"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
