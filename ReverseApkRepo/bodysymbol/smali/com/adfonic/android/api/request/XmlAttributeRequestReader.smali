.class public Lcom/adfonic/android/api/request/XmlAttributeRequestReader;
.super Ljava/lang/Object;
.source "XmlAttributeRequestReader.java"


# static fields
.field private static final MAP_KEY_AD_HEIGHT:Ljava/lang/String; = "ad_height"

.field private static final MAP_KEY_AD_WIDTH:Ljava/lang/String; = "ad_width"

.field private static final MAP_KEY_ALLOW_LOCATION:Ljava/lang/String; = "allow_location"

.field private static final MAP_KEY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final MAP_KEY_REFRESH_AD:Ljava/lang/String; = "refresh_ad"

.field private static final MAP_KEY_REFRESH_TIME:Ljava/lang/String; = "refresh_time"

.field private static final MAP_KEY_SLOT_ID:Ljava/lang/String; = "adfonic_adslot_id"

.field private static final MAP_KEY_TEST_MODE:Ljava/lang/String; = "test_mode"

.field private static final NS:Ljava/lang/String; = "http://schemas.android.com/apk/lib/com.adfonic.android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getString(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "attrs"
    .parameter "namespace"
    .parameter "attributeName"

    .prologue
    const/4 v1, -0x1

    .line 119
    invoke-interface {p2, p3, p4, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, resId:I
    if-eq v0, v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p2, p3, p4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setAdHeight(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V
    .locals 3
    .parameter "attrs"
    .parameter "res"
    .parameter "request"

    .prologue
    .line 56
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "ad_height"

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->getString(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, v1}, Lcom/adfonic/android/api/Request;->setAdHeight(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Please provide a values for attribute : ad_height"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAdWidth(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V
    .locals 3
    .parameter "attrs"
    .parameter "res"
    .parameter "request"

    .prologue
    .line 64
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "ad_width"

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->getString(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, v1}, Lcom/adfonic/android/api/Request;->setAdWidth(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Please provide a values for attribute : ad_width"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAllowLocation(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V
    .locals 4
    .parameter "attrs"
    .parameter "r"

    .prologue
    .line 96
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "allow_location"

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/adfonic/android/api/Request;->setAllowLocation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Problem reading allow_location value"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLanguage(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V
    .locals 3
    .parameter "attrs"
    .parameter "res"
    .parameter "r"

    .prologue
    .line 72
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "language"

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->getString(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/adfonic/android/api/Request;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Problem reading refresh_time value"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRefreshAd(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V
    .locals 4
    .parameter "attrs"
    .parameter "r"

    .prologue
    .line 88
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "refresh_ad"

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/adfonic/android/api/Request;->setRefreshAd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Problem reading refresh_ad value"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRefreshTime(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V
    .locals 4
    .parameter "attrs"
    .parameter "r"

    .prologue
    .line 80
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "refresh_time"

    const/16 v3, 0x14

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/adfonic/android/api/Request;->setRefreshTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Problem reading refresh_time value"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSlotId(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V
    .locals 3
    .parameter "attrs"
    .parameter "res"
    .parameter "r"

    .prologue
    .line 112
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "adfonic_adslot_id"

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->getString(Landroid/content/res/Resources;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/adfonic/android/api/Request;->setSlotId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Problem reading adfonic_adslot_id value"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTest(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V
    .locals 4
    .parameter "attrs"
    .parameter "r"

    .prologue
    .line 104
    :try_start_0
    const-string v1, "http://schemas.android.com/apk/lib/com.adfonic.android"

    const-string v2, "test_mode"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/adfonic/android/api/Request;->setTest(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Problem reading test_mode value"

    invoke-static {v1}, Lcom/adfonic/android/utils/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public convertToRequest(Landroid/util/AttributeSet;Landroid/content/Context;)Lcom/adfonic/android/api/Request;
    .locals 2
    .parameter "attrs"
    .parameter "context"

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/adfonic/android/api/Request;

    invoke-direct {v0}, Lcom/adfonic/android/api/Request;-><init>()V

    .line 43
    .local v0, request:Lcom/adfonic/android/api/Request;
    invoke-direct {p0, p1, v1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setSlotId(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setTest(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setAllowLocation(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setRefreshAd(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setRefreshTime(Landroid/util/AttributeSet;Lcom/adfonic/android/api/Request;)V

    .line 48
    invoke-direct {p0, p1, v1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setLanguage(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V

    .line 49
    invoke-direct {p0, p1, v1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setAdWidth(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V

    .line 50
    invoke-direct {p0, p1, v1, v0}, Lcom/adfonic/android/api/request/XmlAttributeRequestReader;->setAdHeight(Landroid/util/AttributeSet;Landroid/content/res/Resources;Lcom/adfonic/android/api/Request;)V

    .line 51
    return-object v0
.end method
