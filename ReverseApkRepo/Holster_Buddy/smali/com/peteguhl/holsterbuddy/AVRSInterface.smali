.class public interface abstract Lcom/peteguhl/holsterbuddy/AVRSInterface;
.super Ljava/lang/Object;
.source "AVRSInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract refreshSettings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
