.class public final LeP;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 15
    mul-int/lit8 v0, p0, 0x25

    return v0
.end method

.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0}, LeP;->a(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method
