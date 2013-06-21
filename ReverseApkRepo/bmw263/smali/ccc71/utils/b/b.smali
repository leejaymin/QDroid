.class public final Lccc71/utils/b/b;
.super Lccc71/utils/b/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lccc71/utils/b/d;-><init>()V

    .line 17
    iput-object p1, p0, Lccc71/utils/b/b;->a:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lccc71/utils/b/b;->c:J

    .line 19
    iput-wide p4, p0, Lccc71/utils/b/b;->b:J

    .line 20
    iput p6, p0, Lccc71/utils/b/b;->d:I

    .line 21
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter

    .prologue
    .line 1
    check-cast p1, Lccc71/utils/b/b;

    iget-wide v0, p1, Lccc71/utils/b/b;->b:J

    iget-wide v2, p1, Lccc71/utils/b/b;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lccc71/utils/b/b;->b:J

    iget-wide v4, p0, Lccc71/utils/b/b;->c:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
