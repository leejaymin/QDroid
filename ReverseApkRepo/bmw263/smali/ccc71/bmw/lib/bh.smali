.class public final Lccc71/bmw/lib/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lccc71/bmw/lib/bh;->a:I

    .line 20
    iput v1, p0, Lccc71/bmw/lib/bh;->b:I

    .line 21
    const v0, 0x41f0cccd

    iput v0, p0, Lccc71/bmw/lib/bh;->c:F

    .line 22
    const/high16 v0, 0x41f0

    iput v0, p0, Lccc71/bmw/lib/bh;->d:F

    .line 23
    const/16 v0, 0xfa1

    iput v0, p0, Lccc71/bmw/lib/bh;->e:I

    .line 24
    const/16 v0, 0xfa0

    iput v0, p0, Lccc71/bmw/lib/bh;->f:I

    .line 25
    iput v1, p0, Lccc71/bmw/lib/bh;->g:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lccc71/bmw/lib/bh;->h:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lccc71/bmw/lib/bh;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget v0, p1, Lccc71/bmw/lib/bh;->a:I

    iput v0, p0, Lccc71/bmw/lib/bh;->a:I

    .line 32
    iget v0, p1, Lccc71/bmw/lib/bh;->b:I

    iput v0, p0, Lccc71/bmw/lib/bh;->b:I

    .line 33
    iget v0, p1, Lccc71/bmw/lib/bh;->c:F

    iput v0, p0, Lccc71/bmw/lib/bh;->c:F

    .line 34
    iget v0, p1, Lccc71/bmw/lib/bh;->d:F

    iput v0, p0, Lccc71/bmw/lib/bh;->d:F

    .line 35
    iget v0, p1, Lccc71/bmw/lib/bh;->e:I

    iput v0, p0, Lccc71/bmw/lib/bh;->e:I

    .line 36
    iget v0, p1, Lccc71/bmw/lib/bh;->f:I

    iput v0, p0, Lccc71/bmw/lib/bh;->f:I

    .line 37
    iget v0, p1, Lccc71/bmw/lib/bh;->h:I

    iput v0, p0, Lccc71/bmw/lib/bh;->h:I

    .line 38
    iget v0, p1, Lccc71/bmw/lib/bh;->g:I

    iput v0, p0, Lccc71/bmw/lib/bh;->g:I

    .line 39
    return-void
.end method
