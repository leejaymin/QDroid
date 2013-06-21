.class public final Lccc71/utils/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lccc71/utils/b/f;

    check-cast p2, Lccc71/utils/b/f;

    invoke-virtual {p2}, Lccc71/utils/b/f;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lccc71/utils/b/f;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
