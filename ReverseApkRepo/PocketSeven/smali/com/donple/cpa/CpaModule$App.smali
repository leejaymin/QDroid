.class Lcom/donple/cpa/CpaModule$App;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "App"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b18cec101767a2dL


# instance fields
.field private appId:I

.field private appStoreUrl:Ljava/lang/String;

.field private appUrlParams:Ljava/lang/String;

.field private bundleId:Ljava/lang/String;

.field private cpaParams:Ljava/lang/String;

.field private status:I

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;

.field private transactionId:I

.field private unitPointGiving:I


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2245
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$App;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2245
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$App;-><init>(Lcom/donple/cpa/CpaModule;)V

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .prologue
    .line 2260
    iget v0, p0, Lcom/donple/cpa/CpaModule$App;->appId:I

    return v0
.end method

.method public getAppStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$App;->appStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUrlParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$App;->appUrlParams:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$App;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpaParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$App;->cpaParams:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2308
    iget v0, p0, Lcom/donple/cpa/CpaModule$App;->status:I

    return v0
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 2276
    iget v0, p0, Lcom/donple/cpa/CpaModule$App;->transactionId:I

    return v0
.end method

.method public getUnitPointGiving()I
    .locals 1

    .prologue
    .line 2268
    iget v0, p0, Lcom/donple/cpa/CpaModule$App;->unitPointGiving:I

    return v0
.end method

.method public setAppId(I)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 2264
    iput p1, p0, Lcom/donple/cpa/CpaModule$App;->appId:I

    .line 2265
    return-void
.end method

.method public setAppStoreUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "appStoreUrl"

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$App;->appStoreUrl:Ljava/lang/String;

    .line 2289
    return-void
.end method

.method public setAppUrlParams(Ljava/lang/String;)V
    .locals 0
    .parameter "appUrlParams"

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$App;->appUrlParams:Ljava/lang/String;

    .line 2297
    return-void
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0
    .parameter "bundleId"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$App;->bundleId:Ljava/lang/String;

    .line 2305
    return-void
.end method

.method public setCpaParams(Ljava/lang/String;)V
    .locals 0
    .parameter "cpaParams"

    .prologue
    .line 2320
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$App;->cpaParams:Ljava/lang/String;

    .line 2321
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2312
    iput p1, p0, Lcom/donple/cpa/CpaModule$App;->status:I

    .line 2313
    return-void
.end method

.method public setTransactionId(I)V
    .locals 0
    .parameter "transactionId"

    .prologue
    .line 2280
    iput p1, p0, Lcom/donple/cpa/CpaModule$App;->transactionId:I

    .line 2281
    return-void
.end method

.method public setUnitPointGiving(I)V
    .locals 0
    .parameter "unitPointGiving"

    .prologue
    .line 2272
    iput p1, p0, Lcom/donple/cpa/CpaModule$App;->unitPointGiving:I

    .line 2273
    return-void
.end method
