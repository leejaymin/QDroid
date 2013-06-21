.class public Lcom/magmamobile/mmusia/parser/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final verboseLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJSDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getJSDate(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 2
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getJSDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D
    .locals 2
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method public static getJSInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getJSInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static getJSLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getJSLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 2
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method public static getJSString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "jo"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/magmamobile/mmusia/parser/JsonUtils;->getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJSString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "jo"
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
