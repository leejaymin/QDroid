.class final Lcom/scoreloop/client/android/core/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/util/Cache;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/util/Cache;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/a;->a:Lcom/scoreloop/client/android/core/util/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/a;->a:Lcom/scoreloop/client/android/core/util/Cache;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/Cache;->a()V

    .line 53
    return-void
.end method
