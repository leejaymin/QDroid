.class public final Lccc71/utils/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const v0, 0x7fffffff

    iput v0, p0, Lccc71/utils/aj;->a:I

    .line 6
    const/high16 v0, -0x8000

    iput v0, p0, Lccc71/utils/aj;->b:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lccc71/utils/aj;->d:I

    .line 3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const v0, 0x7fffffff

    iput v0, p0, Lccc71/utils/aj;->a:I

    .line 13
    const/high16 v0, -0x8000

    iput v0, p0, Lccc71/utils/aj;->b:I

    .line 14
    iput v1, p0, Lccc71/utils/aj;->c:I

    .line 15
    iput v1, p0, Lccc71/utils/aj;->d:I

    .line 16
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lccc71/utils/aj;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccc71/utils/aj;->d:I

    .line 22
    iget v0, p0, Lccc71/utils/aj;->a:I

    if-ge p1, v0, :cond_0

    .line 23
    iput p1, p0, Lccc71/utils/aj;->a:I

    .line 24
    :cond_0
    iget v0, p0, Lccc71/utils/aj;->b:I

    if-le p1, v0, :cond_1

    .line 25
    iput p1, p0, Lccc71/utils/aj;->b:I

    .line 26
    :cond_1
    iget v0, p0, Lccc71/utils/aj;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lccc71/utils/aj;->c:I

    .line 27
    return-void
.end method

.method public final finalize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget v0, p0, Lccc71/utils/aj;->d:I

    if-eqz v0, :cond_0

    .line 32
    iget v0, p0, Lccc71/utils/aj;->c:I

    iget v1, p0, Lccc71/utils/aj;->d:I

    div-int/2addr v0, v1

    iput v0, p0, Lccc71/utils/aj;->c:I

    .line 33
    :cond_0
    iget v0, p0, Lccc71/utils/aj;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 34
    iput v2, p0, Lccc71/utils/aj;->a:I

    .line 35
    :cond_1
    iget v0, p0, Lccc71/utils/aj;->b:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_2

    .line 36
    iput v2, p0, Lccc71/utils/aj;->b:I

    .line 37
    :cond_2
    return-void
.end method
