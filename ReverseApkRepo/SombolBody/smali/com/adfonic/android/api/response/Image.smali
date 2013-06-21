.class public Lcom/adfonic/android/api/response/Image;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field public height:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/adfonic/android/api/response/Image;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/adfonic/android/api/response/Image;

    invoke-direct {v0}, Lcom/adfonic/android/api/response/Image;-><init>()V

    .line 22
    .local v0, image:Lcom/adfonic/android/api/response/Image;
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adfonic/android/api/response/Image;->url:Ljava/lang/String;

    .line 23
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adfonic/android/api/response/Image;->width:I

    .line 24
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adfonic/android/api/response/Image;->height:I

    .line 25
    return-object v0
.end method
