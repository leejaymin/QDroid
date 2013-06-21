.class public Lcom/samsung/zirconia/ZirconiaVersion;
.super Ljava/lang/Object;
.source "ZirconiaVersion.java"


# instance fields
.field public build:I

.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "major"
    .parameter "minor"
    .parameter "build"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/samsung/zirconia/ZirconiaVersion;->major:I

    .line 19
    iput p2, p0, Lcom/samsung/zirconia/ZirconiaVersion;->minor:I

    .line 20
    iput p3, p0, Lcom/samsung/zirconia/ZirconiaVersion;->build:I

    .line 21
    return-void
.end method
