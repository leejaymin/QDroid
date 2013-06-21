.class public final Lccc71/utils/b/f;
.super Lccc71/utils/b/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lccc71/utils/b/d;-><init>()V

    .line 35
    iput p1, p0, Lccc71/utils/b/f;->a:I

    .line 36
    iput-object p2, p0, Lccc71/utils/b/f;->b:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lccc71/utils/b/f;->c:J

    .line 38
    iput-wide p5, p0, Lccc71/utils/b/f;->f:J

    .line 39
    iput p7, p0, Lccc71/utils/b/f;->d:I

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lccc71/utils/b/f;)V
    .locals 4
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lccc71/utils/b/f;->d:I

    iget v1, p1, Lccc71/utils/b/f;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/b/f;->d:I

    .line 95
    iget-wide v0, p0, Lccc71/utils/b/f;->c:J

    iget-wide v2, p1, Lccc71/utils/b/f;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccc71/utils/b/f;->c:J

    .line 96
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lccc71/utils/b/f;->c:J

    return-wide v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 1
    check-cast p1, Lccc71/utils/b/f;

    iget-wide v0, p1, Lccc71/utils/b/f;->c:J

    iget-wide v2, p0, Lccc71/utils/b/f;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lccc71/utils/b/f;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wakelock [m_wakeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lccc71/utils/b/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lccc71/utils/b/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
