.class public interface abstract Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;
.super Ljava/lang/Object;
.source "ValueStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/ValueStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValueSource"
.end annotation


# virtual methods
.method public abstract isRetrieving()Z
.end method

.method public abstract retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
.end method

.method public abstract supportedKeys(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
