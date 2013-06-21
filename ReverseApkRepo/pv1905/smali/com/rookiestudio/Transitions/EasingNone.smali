.class public Lcom/rookiestudio/Transitions/EasingNone;
.super Ljava/lang/Object;
.source "EasingNone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeNone(IIII)I
    .locals 1
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 5
    mul-int v0, p2, p0

    div-int/2addr v0, p3

    add-int/2addr v0, p1

    return v0
.end method
