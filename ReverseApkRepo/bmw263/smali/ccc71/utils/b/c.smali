.class public final Lccc71/utils/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lccc71/utils/b/b;

    check-cast p2, Lccc71/utils/b/b;

    iget-wide v0, p2, Lccc71/utils/b/b;->b:J

    iget-wide v2, p2, Lccc71/utils/b/b;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lccc71/utils/b/b;->b:J

    iget-wide v4, p1, Lccc71/utils/b/b;->c:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
