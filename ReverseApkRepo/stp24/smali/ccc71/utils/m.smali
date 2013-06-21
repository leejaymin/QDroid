.class public Lccc71/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/io/File;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    sget v0, Lccc71/pmw/lib/c;->aR:I

    .line 22
    :goto_0
    return v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget v0, Lccc71/pmw/lib/c;->r:I

    goto :goto_0

    .line 22
    :cond_1
    sget v0, Lccc71/pmw/lib/c;->q:I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    return-void
.end method
