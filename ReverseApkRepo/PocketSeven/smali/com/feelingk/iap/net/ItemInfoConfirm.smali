.class public Lcom/feelingk/iap/net/ItemInfoConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "ItemInfoConfirm.java"


# instance fields
.field private mAfterAutoPurchaseInfoAgree:Z

.field private mAutoPurchaseCheck:Z

.field private mFinalVersionCheck:Z

.field private mItemPrice:Ljava/lang/String;

.field private mItemTitle:Ljava/lang/String;

.field private mPeriod:Ljava/lang/String;

.field private mTCash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mFinalVersionCheck:Z

    .line 20
    iput-boolean v1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAutoPurchaseCheck:Z

    .line 21
    iput-boolean v1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAfterAutoPurchaseInfoAgree:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getItemPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTCash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mTCash:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmAfterAutoPurchaseInfoAgree()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAfterAutoPurchaseInfoAgree:Z

    return v0
.end method

.method public getmAutoPurchaseCheck()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAutoPurchaseCheck:Z

    return v0
.end method

.method public getmFinalVersionCheck()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mFinalVersionCheck:Z

    return v0
.end method

.method protected parse([B)V
    .locals 5
    .parameter "v"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 26
    invoke-virtual {p0}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getMsgLength()I

    move-result v3

    add-int/lit8 v2, v3, 0xe

    .line 29
    .local v2, offset:I
    const/16 v3, 0x1e

    :try_start_0
    new-array v0, v3, [B

    .line 30
    .local v0, _byte:[B
    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemTitle:Ljava/lang/String;

    .line 32
    add-int/lit8 v2, v2, 0x1e

    .line 34
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 35
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemPrice:Ljava/lang/String;

    .line 37
    add-int/lit8 v2, v2, 0xa

    .line 39
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 40
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mPeriod:Ljava/lang/String;

    .line 42
    add-int/lit8 v2, v2, 0xa

    .line 44
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 45
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mTCash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #_byte:[B
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setmAfterAutoPurchaseInfoAgree(Z)V
    .locals 0
    .parameter "mAfterAutoPurchaseInfoAgree"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAfterAutoPurchaseInfoAgree:Z

    .line 86
    return-void
.end method

.method public setmAutoPurchaseCheck(Z)V
    .locals 0
    .parameter "mAutoPurchase"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAutoPurchaseCheck:Z

    .line 78
    return-void
.end method

.method public setmFinalVersionCheck(Z)V
    .locals 0
    .parameter "mFinalVersionCheck"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mFinalVersionCheck:Z

    .line 70
    return-void
.end method
