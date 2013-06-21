.class public Lcom/kaspersky/components/urlchecker/UrlChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mUrlChecker:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-direct {p0}, Lcom/kaspersky/components/urlchecker/UrlChecker;->init()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize url_checker"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    return-void
.end method

.method private native free()V
.end method

.method private native init()I
.end method


# virtual methods
.method public native checkUrl(Ljava/lang/String;II)Lcom/kaspersky/components/urlchecker/UrlInfo;
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kaspersky/components/urlchecker/UrlChecker;->free()V

    .line 16
    return-void
.end method
