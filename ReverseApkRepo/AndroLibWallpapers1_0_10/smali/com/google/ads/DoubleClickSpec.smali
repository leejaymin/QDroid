.class public Lcom/google/ads/DoubleClickSpec;
.super Ljava/lang/Object;
.source "DoubleClickSpec.java"

# interfaces
.implements Lcom/google/ads/AdSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/DoubleClickSpec$SizeProfile;
    }
.end annotation


# instance fields
.field private mColorBackground:Ljava/lang/String;

.field private mKeyname:Ljava/lang/String;

.field private mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "keyname"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    .line 42
    return-void
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
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/ads/AdSpec$Parameter;>;"
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "k"

    iget-object v3, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v1, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_bg"

    iget-object v3, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    if-eqz v1, :cond_1

    .line 56
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "sp"

    iget-object v3, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    return-object v0
.end method

.method public getColorBackground()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugMode()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeProfile()Lcom/google/ads/DoubleClickSpec$SizeProfile;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    return-object v0
.end method

.method public setColorBackground(Ljava/lang/String;)Lcom/google/ads/DoubleClickSpec;
    .locals 0
    .parameter "colorBackground"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setKeyname(Ljava/lang/String;)Lcom/google/ads/DoubleClickSpec;
    .locals 0
    .parameter "keyname"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public setSizeProfile(Lcom/google/ads/DoubleClickSpec$SizeProfile;)Lcom/google/ads/DoubleClickSpec;
    .locals 0
    .parameter "sizeProfile"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 108
    return-object p0
.end method
