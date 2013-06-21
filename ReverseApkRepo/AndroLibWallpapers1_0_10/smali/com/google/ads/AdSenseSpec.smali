.class public Lcom/google/ads/AdSenseSpec;
.super Ljava/lang/Object;
.source "AdSenseSpec.java"

# interfaces
.implements Lcom/google/ads/AdSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdSenseSpec$AdType;
    }
.end annotation


# static fields
.field private static final APP_URL_MODEL_WITH_SEPARATORS:Ljava/lang/String; = ".android."

.field private static final JS_PARAM:Ljava/lang/String; = "afma-sdk-a-v1.2"

.field private static final PLATFORM:Ljava/lang/String; = "Android"


# instance fields
.field private mAdTestEnabled:Z

.field private mAdType:Lcom/google/ads/AdSenseSpec$AdType;

.field private mAlternateAdUrl:Ljava/lang/String;

.field private mAlternateColor:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mColorBackground:Ljava/lang/String;

.field private mColorBorder:Ljava/lang/String;

.field private mColorLink:Ljava/lang/String;

.field private mColorText:Ljava/lang/String;

.field private mColorUrl:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mWebEquivalentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "clientId"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "ClientId"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    .line 65
    return-void
.end method

.method private checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "paramName"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method private checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "paramName"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    return-void
.end method

.method private generateAppUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, ".android."

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 156
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 157
    .local v3, versionCode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".android."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 160
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #versionCode:I
    :goto_0
    return-object v4

    .line 158
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 160
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".android."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public generateParameters(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppName must be set before calling generateParameters()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CompanyName must be set before calling generateParameters()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/ads/AdSpec$Parameter;>;"
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "client"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "app_name"

    invoke-direct {p0, p1}, Lcom/google/ads/AdSenseSpec;->generateAppUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "js"

    const-string v3, "afma-sdk-a-v1.2"

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "platform"

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "an"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "cn"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-boolean v1, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    if-nez v1, :cond_2

    .line 108
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "adtest"

    const-string v3, "off"

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    if-eqz v1, :cond_3

    .line 111
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "ad_type"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    #calls: Lcom/google/ads/AdSenseSpec$AdType;->getTypeName()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/ads/AdSenseSpec$AdType;->access$000(Lcom/google/ads/AdSenseSpec$AdType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 114
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "alternate_ad_url"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 117
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "alt_color"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 120
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "channel"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 123
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_bg"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_7
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 126
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_border"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_8
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 129
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_link"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_9
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 132
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_text"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_a
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 135
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_url"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_b
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 138
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "kw"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_c
    iget-object v1, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 141
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "url"

    iget-object v3, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_d
    return-object v0
.end method

.method public getAdTestEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    return v0
.end method

.method public getAdType()Lcom/google/ads/AdSenseSpec$AdType;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    return-object v0
.end method

.method public getAlternateAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getColorBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getColorBorder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    return-object v0
.end method

.method public getColorLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    return-object v0
.end method

.method public getColorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    return-object v0
.end method

.method public getColorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugMode()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getWebEquivalentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "enabled"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/google/ads/AdSenseSpec;->mAdTestEnabled:Z

    .line 189
    return-object p0
.end method

.method public setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;
    .locals 0
    .parameter "adType"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAdType:Lcom/google/ads/AdSenseSpec$AdType;

    .line 200
    return-object p0
.end method

.method public setAlternateAdUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "alternateAdUrl"

    .prologue
    .line 247
    const-string v0, "AlternateAdUrl"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateAdUrl:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public setAlternateColor(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "alternateColor"

    .prologue
    .line 263
    const-string v0, "AlternateColor"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAlternateColor:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "appName"

    .prologue
    .line 215
    const-string v0, "AppName"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mAppName:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "channel"

    .prologue
    .line 231
    const-string v0, "Channel"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mChannel:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "clientId"

    .prologue
    .line 173
    const-string v0, "ClientId"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mClientId:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorBackground"

    .prologue
    .line 278
    const-string v0, "ColorBackground"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorBackground:Ljava/lang/String;

    .line 280
    return-object p0
.end method

.method public setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorBorder"

    .prologue
    .line 293
    const-string v0, "ColorBorder"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorBorder:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorLink"

    .prologue
    .line 308
    const-string v0, "ColorLink"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorLink:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorText"

    .prologue
    .line 323
    const-string v0, "ColorText"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorText:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "colorUrl"

    .prologue
    .line 338
    const-string v0, "ColorUrl"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mColorUrl:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "companyName"

    .prologue
    .line 355
    const-string v0, "CompanyName"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mCompanyName:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "keywords"

    .prologue
    .line 371
    const-string v0, "Keywords"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mKeywords:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 1
    .parameter "webEquivalentUrl"

    .prologue
    .line 388
    const-string v0, "WebEquivalentUrl"

    invoke-direct {p0, p1, v0}, Lcom/google/ads/AdSenseSpec;->checkNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput-object p1, p0, Lcom/google/ads/AdSenseSpec;->mWebEquivalentUrl:Ljava/lang/String;

    .line 390
    return-object p0
.end method
