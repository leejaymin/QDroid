.class public Lti/modules/titanium/network/HTTPClientProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "HTTPClientProxy.java"


# static fields
.field public static final DONE:I = 0x4

.field public static final HEADERS_RECEIVED:I = 0x2

.field public static final LOADING:I = 0x3

.field public static final OPENED:I = 0x1

.field public static final UNSENT:I


# instance fields
.field private client:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 30
    new-instance v0, Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/TiHTTPClient;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    .line 31
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->abort()V

    .line 36
    return-void
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAllResponseHeaders()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoEncodeUrl()Z

    move-result v0

    return v0
.end method

.method public getConnected()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getReadyState()I

    move-result v0

    return v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseData()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "header"

    .prologue
    .line 55
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseXML()Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "url"

    .prologue
    .line 81
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->send(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public setAutoEncodeUrl(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 125
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoEncodeUrl(Z)V

    .line 126
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 98
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setTimeout(I)V

    .line 99
    return-void
.end method
