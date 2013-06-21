.class public final Lav;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>(Ljava/util/Date;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lav;->a:J

    .line 187
    iput p2, p0, Lav;->b:I

    .line 188
    iput-wide p3, p0, Lav;->c:J

    .line 189
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lav;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 198
    iget-wide v0, p0, Lav;->a:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lav;->b:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lav;->c:J

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lav;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
