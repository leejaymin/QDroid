.class Ledu/umich/PowerTutor/service/UMLoggerService$1;
.super Ledu/umich/PowerTutor/service/ICounterService$Stub;
.source "UMLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/service/UMLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/service/UMLoggerService;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    .line 239
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/ICounterService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentHistory(III)[I
    .locals 6
    .parameter "count"
    .parameter "componentId"
    .parameter "uid"

    .prologue
    .line 253
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-wide/16 v4, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ledu/umich/PowerTutor/service/PowerEstimator;->getComponentHistory(IIIJ)[I

    move-result-object v0

    return-object v0
.end method

.method public getComponents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/service/PowerEstimator;->getComponents()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentsMaxPower()[I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/service/PowerEstimator;->getComponentsMaxPower()[I

    move-result-object v0

    return-object v0
.end method

.method public getMeans(II)[J
    .locals 1
    .parameter "uid"
    .parameter "windowType"

    .prologue
    .line 265
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getMeans(II)[J

    move-result-object v0

    return-object v0
.end method

.method public getNoUidMask()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/service/PowerEstimator;->getNoUidMask()I

    move-result v0

    return v0
.end method

.method public getRuntime(II)J
    .locals 2
    .parameter "uid"
    .parameter "windowType"

    .prologue
    .line 261
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getRuntime(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotals(II)[J
    .locals 1
    .parameter "uid"
    .parameter "windowType"

    .prologue
    .line 257
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getTotals(II)[J

    move-result-object v0

    return-object v0
.end method

.method public getUidExtra(Ljava/lang/String;I)J
    .locals 2
    .parameter "name"
    .parameter "uid"

    .prologue
    .line 283
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getUidExtra(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidInfo(II)[B
    .locals 6
    .parameter "windowType"
    .parameter "ignoreMask"

    .prologue
    .line 269
    iget-object v4, p0, Ledu/umich/PowerTutor/service/UMLoggerService$1;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v4}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ledu/umich/PowerTutor/service/PowerEstimator;->getUidInfo(II)[Ledu/umich/PowerTutor/service/UidInfo;

    move-result-object v2

    .line 270
    .local v2, infos:[Ledu/umich/PowerTutor/service/UidInfo;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v3, output:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 279
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :goto_1
    return-object v4

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_1

    .line 276
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    aget-object v1, v2, v4

    .line 277
    .local v1, info:Ledu/umich/PowerTutor/service/UidInfo;
    invoke-virtual {v1}, Ledu/umich/PowerTutor/service/UidInfo;->recycle()V

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
