.class public interface abstract Lcom/wolfram/alpha/WASubpod;
.super Ljava/lang/Object;
.source "WASubpod.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitable;


# virtual methods
.method public abstract acquireImage()V
.end method

.method public abstract getContents()[Lcom/wolfram/alpha/visitor/Visitable;
.end method

.method public abstract getSubpodStates()[Lcom/wolfram/alpha/WASubpodState;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method
