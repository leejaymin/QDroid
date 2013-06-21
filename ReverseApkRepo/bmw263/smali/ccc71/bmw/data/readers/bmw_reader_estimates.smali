.class public Lccc71/bmw/data/readers/bmw_reader_estimates;
.super Lccc71/bmw/data/readers/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccc71/bmw/data/readers/a;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->h()V

    .line 15
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
