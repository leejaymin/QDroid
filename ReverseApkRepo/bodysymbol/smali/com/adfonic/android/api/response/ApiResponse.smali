.class public Lcom/adfonic/android/api/response/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adfonic/android/api/response/ApiResponse$Format;,
        Lcom/adfonic/android/api/response/ApiResponse$Type;
    }
.end annotation


# static fields
.field private static final AD_CONTENT:Ljava/lang/String; = "adContent"

.field private static final AD_ID:Ljava/lang/String; = "adId"

.field private static final BANNER_FORMAT:Ljava/lang/String; = "banner"

.field private static final COMPONENTS:Ljava/lang/String; = "components"

.field private static final DESTINATION:Ljava/lang/String; = "destination"

.field private static final DESTINATION_TYPE:Ljava/lang/String; = "type"

.field private static final DESTINATION_URL:Ljava/lang/String; = "url"

.field private static final FORMAT:Ljava/lang/String; = "format"

.field private static final IMAGE320X480:Ljava/lang/String; = "image320x480"

.field private static final JSON_STATUS:Ljava/lang/String; = "status"

.field private static final JSON_STATUS_ERROR:Ljava/lang/String; = "error"

.field private static final JSON_STATUS_SUCCESS:Ljava/lang/String; = "success"

.field private static final TEXT_FORMAT:Ljava/lang/String; = "text"

.field private static final TRACKING_ID:Ljava/lang/String; = "trackingId"


# instance fields
.field private adContent:Ljava/lang/String;

.field private adId:Ljava/lang/String;

.field private component:Lcom/adfonic/android/api/response/BannerComponent;

.field private destinationType:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field private destinationUrl:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private format:Lcom/adfonic/android/api/response/ApiResponse$Format;

.field private isError:Z

.field private trackingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->isError:Z

    .line 42
    const-string v0, "Unknown error"

    iput-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method private extractFormat(Lorg/json/JSONObject;)Lcom/adfonic/android/api/response/ApiResponse$Format;
    .locals 2
    .parameter "obj"

    .prologue
    .line 174
    const-string v1, "format"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, fas:Ljava/lang/String;
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->TEXT:Lcom/adfonic/android/api/response/ApiResponse$Format;

    .line 182
    :goto_0
    return-object v1

    .line 177
    :cond_0
    const-string v1, "banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->BANNER:Lcom/adfonic/android/api/response/ApiResponse$Format;

    goto :goto_0

    .line 179
    :cond_1
    const-string v1, "image320x480"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->IMAGE320X480:Lcom/adfonic/android/api/response/ApiResponse$Format;

    goto :goto_0

    .line 182
    :cond_2
    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->NA:Lcom/adfonic/android/api/response/ApiResponse$Format;

    goto :goto_0
.end method

.method private getPrivateField(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .parameter "o"

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 159
    .local v4, fields:[Ljava/lang/reflect/Field;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, b:Ljava/lang/StringBuilder;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 161
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 167
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 170
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .end local v3           #field:Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public getAdContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->adContent:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Lcom/adfonic/android/api/response/BannerComponent;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->component:Lcom/adfonic/android/api/response/BannerComponent;

    return-object v0
.end method

.method public getDestinationType()Lcom/adfonic/android/api/response/ApiResponse$Type;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->destinationType:Lcom/adfonic/android/api/response/ApiResponse$Type;

    return-object v0
.end method

.method public getDestinationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->destinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Lcom/adfonic/android/api/response/ApiResponse$Format;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->format:Lcom/adfonic/android/api/response/ApiResponse$Format;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method public handleResponse(Ljava/lang/String;)Lcom/adfonic/android/api/response/ApiResponse;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 52
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, obj:Lorg/json/JSONObject;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adfonic response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adfonic/android/utils/Log;->adRequestSummary(Ljava/lang/String;)V

    .line 54
    const-string v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, status:Ljava/lang/String;
    const-string v6, "error"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    iput-boolean v8, p0, Lcom/adfonic/android/api/response/ApiResponse;->isError:Z

    .line 57
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->errorMessage:Ljava/lang/String;

    .line 87
    :cond_0
    :goto_0
    return-object p0

    .line 58
    :cond_1
    const-string v6, "success"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->isError:Z

    .line 60
    const-string v6, "adId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->adId:Ljava/lang/String;

    .line 61
    const-string v6, "trackingId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->trackingId:Ljava/lang/String;

    .line 62
    const-string v6, "adContent"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->adContent:Ljava/lang/String;

    .line 63
    invoke-direct {p0, v3}, Lcom/adfonic/android/api/response/ApiResponse;->extractFormat(Lorg/json/JSONObject;)Lcom/adfonic/android/api/response/ApiResponse$Format;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->format:Lcom/adfonic/android/api/response/ApiResponse$Format;

    .line 64
    const-string v6, "destination"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    .local v1, destination:Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    :try_start_0
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, typeName:Ljava/lang/String;
    invoke-static {v5}, Lcom/adfonic/android/api/response/ApiResponse$Type;->valueOf(Ljava/lang/String;)Lcom/adfonic/android/api/response/ApiResponse$Type;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->destinationType:Lcom/adfonic/android/api/response/ApiResponse$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v5           #typeName:Ljava/lang/String;
    :goto_1
    const-string v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->destinationUrl:Ljava/lang/String;

    .line 79
    :cond_2
    const-string v6, "components"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, componentJson:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0}, Lcom/adfonic/android/api/response/BannerComponent;->fromJson(Lorg/json/JSONObject;)Lcom/adfonic/android/api/response/BannerComponent;

    move-result-object v6

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->component:Lcom/adfonic/android/api/response/BannerComponent;

    goto :goto_0

    .line 73
    .end local v0           #componentJson:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 75
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/adfonic/android/api/response/ApiResponse$Type;->URL:Lcom/adfonic/android/api/response/ApiResponse$Type;

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->destinationType:Lcom/adfonic/android/api/response/ApiResponse$Type;

    goto :goto_1

    .line 84
    .end local v1           #destination:Lorg/json/JSONObject;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    iput-boolean v8, p0, Lcom/adfonic/android/api/response/ApiResponse;->isError:Z

    .line 85
    const-string v6, "Unknown error"

    iput-object v6, p0, Lcom/adfonic/android/api/response/ApiResponse;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAmazonDestinationType()Z
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/adfonic/android/api/response/ApiResponse;->getDestinationType()Lcom/adfonic/android/api/response/ApiResponse$Type;

    move-result-object v0

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->AMAZON:Lcom/adfonic/android/api/response/ApiResponse$Type;

    if-ne v0, v1, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAndroidDestinationType()Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/adfonic/android/api/response/ApiResponse;->getDestinationType()Lcom/adfonic/android/api/response/ApiResponse$Type;

    move-result-object v0

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->ANDROID:Lcom/adfonic/android/api/response/ApiResponse$Type;

    if-ne v0, v1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioResponse()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/adfonic/android/api/response/ApiResponse;->getDestinationType()Lcom/adfonic/android/api/response/ApiResponse$Type;

    move-result-object v0

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->AUDIO:Lcom/adfonic/android/api/response/ApiResponse$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallResponse()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/adfonic/android/api/response/ApiResponse;->getDestinationType()Lcom/adfonic/android/api/response/ApiResponse$Type;

    move-result-object v0

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->CALL:Lcom/adfonic/android/api/response/ApiResponse$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->isError:Z

    return v0
.end method

.method public isInterstitial()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adfonic/android/api/response/ApiResponse;->format:Lcom/adfonic/android/api/response/ApiResponse$Format;

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->IMAGE320X480:Lcom/adfonic/android/api/response/ApiResponse$Format;

    if-ne v0, v1, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoResponse()Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/adfonic/android/api/response/ApiResponse;->getDestinationType()Lcom/adfonic/android/api/response/ApiResponse$Type;

    move-result-object v0

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->VIDEO:Lcom/adfonic/android/api/response/ApiResponse$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p0}, Lcom/adfonic/android/api/response/ApiResponse;->getPrivateField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
