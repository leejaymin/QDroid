.class Ledu/missouristate/MissourStateTabs$1$1;
.super Ljava/lang/Object;
.source "MissourStateTabs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/missouristate/MissourStateTabs$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/missouristate/MissourStateTabs$1;

.field private final synthetic val$currentActivity:Landroid/app/TabActivity;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Ledu/missouristate/MissourStateTabs$1;Landroid/webkit/WebView;Landroid/app/TabActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/missouristate/MissourStateTabs$1$1;->this$1:Ledu/missouristate/MissourStateTabs$1;

    iput-object p2, p0, Ledu/missouristate/MissourStateTabs$1$1;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Ledu/missouristate/MissourStateTabs$1$1;->val$currentActivity:Landroid/app/TabActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 70
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 71
    .local v2, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Ledu/missouristate/MissourStateTabs$1$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 74
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 75
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 77
    .local v4, instream:Ljava/io/InputStream;
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs$1$1;->val$currentActivity:Landroid/app/TabActivity;

    invoke-virtual {v6, v4}, Landroid/app/TabActivity;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #instream:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 86
    return-void

    .line 79
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 80
    .local v0, e1:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0           #e1:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 82
    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
