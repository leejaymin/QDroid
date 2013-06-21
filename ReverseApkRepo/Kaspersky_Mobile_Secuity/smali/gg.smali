.class public final Lgg;
.super LfT;
.source "SourceFile"


# static fields
.field private static final a:[LfU;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 239
    const/4 v0, 0x5

    new-array v0, v0, [LfU;

    new-instance v1, LfU;

    const-string v2, "rateRunTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x337f9800

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v7

    new-instance v1, LfU;

    const-string v2, "rateShowDialog"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-instance v2, LfU;

    const-string v3, "rateMalwareCount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, LfU;

    const-string v3, "ratePhishingCount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, LfU;

    const-string v3, "rateState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, LfU;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    sput-object v0, Lgg;->a:[LfU;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lgg;->a:[LfU;

    invoke-direct {p0, v0}, LfT;-><init>([LfU;)V

    .line 251
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgg;->a(Lgi;)V

    .line 252
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfW;->b()Lgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgg;->b(Lgi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
