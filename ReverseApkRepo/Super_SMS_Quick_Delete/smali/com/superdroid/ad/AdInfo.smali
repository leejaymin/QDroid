.class public Lcom/superdroid/ad/AdInfo;
.super Ljava/lang/Object;
.source "AdInfo.java"


# instance fields
.field public detailRes:I

.field public logoRes:I

.field public packageNameRes:I

.field public titleRes:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "title"
    .parameter "detail"
    .parameter "packageName"
    .parameter "logo"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/superdroid/ad/AdInfo;->titleRes:I

    .line 11
    iput p2, p0, Lcom/superdroid/ad/AdInfo;->detailRes:I

    .line 12
    iput p3, p0, Lcom/superdroid/ad/AdInfo;->packageNameRes:I

    .line 13
    iput p4, p0, Lcom/superdroid/ad/AdInfo;->logoRes:I

    .line 14
    return-void
.end method