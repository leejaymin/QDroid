.class public Lcom/ui/OAuth/OAuthCallback;
.super Ljava/lang/Object;
.source "OAuthCallback.java"

# interfaces
.implements Lcom/ui/OAuth/OAuthInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsonReceived(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .parameter "object"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public urlReceived(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
