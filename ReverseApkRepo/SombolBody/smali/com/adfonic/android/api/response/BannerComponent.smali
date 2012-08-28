.class public Lcom/adfonic/android/api/response/BannerComponent;
.super Ljava/lang/Object;
.source "BannerComponent.java"


# static fields
.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final TAG_LINE:Ljava/lang/String; = "tagline"


# instance fields
.field private image:Lcom/adfonic/android/api/response/Image;

.field private tagLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/adfonic/android/api/response/BannerComponent;
    .locals 4
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/adfonic/android/api/response/BannerComponent;

    invoke-direct {v0}, Lcom/adfonic/android/api/response/BannerComponent;-><init>()V

    .line 38
    .local v0, banner:Lcom/adfonic/android/api/response/BannerComponent;
    const-string v3, "image"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, jsonImage:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/adfonic/android/api/response/Image;->fromJson(Lorg/json/JSONObject;)Lcom/adfonic/android/api/response/Image;

    move-result-object v3

    iput-object v3, v0, Lcom/adfonic/android/api/response/BannerComponent;->image:Lcom/adfonic/android/api/response/Image;

    .line 40
    const-string v3, "tagline"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    .local v2, tagLineJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 42
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adfonic/android/api/response/BannerComponent;->tagLine:Ljava/lang/String;

    .line 44
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBeacons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adfonic/android/api/response/Beacon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Lcom/adfonic/android/api/response/ApiResponse$Format;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->BANNER:Lcom/adfonic/android/api/response/ApiResponse$Format;

    return-object v0
.end method

.method public getImage()Lcom/adfonic/android/api/response/Image;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adfonic/android/api/response/BannerComponent;->image:Lcom/adfonic/android/api/response/Image;

    return-object v0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adfonic/android/api/response/BannerComponent;->tagLine:Ljava/lang/String;

    return-object v0
.end method
