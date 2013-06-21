.class public Lcom/scoreloop/client/android/core/util/NullStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/scoreloop/client/android/core/util/JSONSerializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/util/Store",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/util/JSONSerializable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/NullStore;->a:Lcom/scoreloop/client/android/core/util/JSONSerializable;

    .line 9
    return-void
.end method


# virtual methods
.method public final g()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/NullStore;->a:Lcom/scoreloop/client/android/core/util/JSONSerializable;

    return-object v0
.end method
