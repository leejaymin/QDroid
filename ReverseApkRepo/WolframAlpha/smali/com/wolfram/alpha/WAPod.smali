.class public interface abstract Lcom/wolfram/alpha/WAPod;
.super Ljava/lang/Object;
.source "WAPod.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitable;


# virtual methods
.method public abstract acquireImages()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation
.end method

.method public abstract finishAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation
.end method

.method public abstract getAsyncException()Lcom/wolfram/alpha/WAException;
.end method

.method public abstract getAsyncURL()Ljava/lang/String;
.end method

.method public abstract getDefinitions()[Lcom/wolfram/alpha/WADefinition;
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getInfos()[Lcom/wolfram/alpha/WAInfo;
.end method

.method public abstract getNotes()[Lcom/wolfram/alpha/WANote;
.end method

.method public abstract getNumSubpods()I
.end method

.method public abstract getPodStates()[Lcom/wolfram/alpha/WAPodState;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getScanner()Ljava/lang/String;
.end method

.method public abstract getSounds()[Lcom/wolfram/alpha/WASound;
.end method

.method public abstract getSubpods()[Lcom/wolfram/alpha/WASubpod;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getToggleArrows_Clicked()Z
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract isError()Z
.end method

.method public abstract setToggleArrows_Clicked(Z)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method
