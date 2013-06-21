.class public interface abstract Lcom/wolfram/alpha/WAPodState;
.super Ljava/lang/Object;
.source "WAPodState.java"

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

.method public abstract setCurrentIndex(I)Lcom/wolfram/alpha/WAPodState;
.end method

.method public abstract setCurrentIndex_SubPodState(I)V
.end method

.method public abstract setID_SubPodState(J)V
.end method

.method public abstract setInputs_SubPodState([Ljava/lang/String;)V
.end method

.method public abstract setNames_SubPodState([Ljava/lang/String;)V
.end method
