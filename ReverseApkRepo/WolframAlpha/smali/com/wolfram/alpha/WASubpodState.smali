.class public interface abstract Lcom/wolfram/alpha/WASubpodState;
.super Ljava/lang/Object;
.source "WASubpodState.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitable;


# virtual methods
.method public abstract getCurrentIndex()I
.end method

.method public abstract getID()J
.end method

.method public abstract getInputs()[Ljava/lang/String;
.end method

.method public abstract getNames()[Ljava/lang/String;
.end method

.method public abstract getPodState()Lcom/wolfram/alpha/WAPodState;
.end method

.method public abstract setCurrentIndex(I)Lcom/wolfram/alpha/WASubpodState;
.end method
