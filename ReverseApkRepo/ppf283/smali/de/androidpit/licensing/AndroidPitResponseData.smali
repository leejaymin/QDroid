.class public Lde/androidpit/licensing/AndroidPitResponseData;
.super Ljava/lang/Object;
.source "AndroidPitResponseData.java"


# instance fields
.field mPackageName:Ljava/lang/String;

.field mResponseCode:Ljava/lang/String;

.field mSalt:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mSalt:I

    .line 22
    iput v0, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mUserId:I

    .line 17
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lde/androidpit/licensing/AndroidPitResponseData;
    .locals 6
    .parameter "responseDataStr"

    .prologue
    const/4 v3, 0x0

    .line 37
    new-instance v2, Lde/androidpit/licensing/AndroidPitResponseData;

    invoke-direct {v2}, Lde/androidpit/licensing/AndroidPitResponseData;-><init>()V

    .line 42
    .local v2, responseData:Lde/androidpit/licensing/AndroidPitResponseData;
    :try_start_0
    const-string v4, "|"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, data:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 45
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v2, Lde/androidpit/licensing/AndroidPitResponseData;->mPackageName:Ljava/lang/String;

    .line 46
    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v2, Lde/androidpit/licensing/AndroidPitResponseData;->mResponseCode:Ljava/lang/String;

    .line 47
    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lde/androidpit/licensing/AndroidPitResponseData;->mSalt:I

    .line 48
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lde/androidpit/licensing/AndroidPitResponseData;->mUserId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #data:[Ljava/lang/String;
    .end local v2           #responseData:Lde/androidpit/licensing/AndroidPitResponseData;
    :goto_0
    return-object v2

    .restart local v0       #data:[Ljava/lang/String;
    .restart local v2       #responseData:Lde/androidpit/licensing/AndroidPitResponseData;
    :cond_0
    move-object v2, v3

    .line 53
    goto :goto_0

    .line 56
    .end local v0           #data:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    move-object v2, v3

    .line 58
    goto :goto_0
.end method


# virtual methods
.method public verifiesAgainst(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .parameter "packageName"
    .parameter "responseCode"
    .parameter "salt"

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mResponseCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mResponseCode:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mSalt:I

    if-eqz v1, :cond_0

    iget v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mSalt:I

    if-ne v1, p3, :cond_0

    .line 94
    iget v1, p0, Lde/androidpit/licensing/AndroidPitResponseData;->mUserId:I

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method
