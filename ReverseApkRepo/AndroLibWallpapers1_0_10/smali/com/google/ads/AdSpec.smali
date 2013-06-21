.class public interface abstract Lcom/google/ads/AdSpec;
.super Ljava/lang/Object;
.source "AdSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdSpec$Parameter;
    }
.end annotation


# virtual methods
.method public abstract generateParameters(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDebugMode()Z
.end method
