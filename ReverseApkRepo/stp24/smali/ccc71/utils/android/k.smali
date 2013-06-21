.class public abstract Lccc71/utils/android/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/utils/android/k;->setPriority(I)V

    .line 8
    invoke-virtual {p0}, Lccc71/utils/android/k;->start()V

    .line 9
    return-void
.end method
