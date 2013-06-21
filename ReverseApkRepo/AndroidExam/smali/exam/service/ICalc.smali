.class public interface abstract Lexam/service/ICalc;
.super Ljava/lang/Object;
.source "ICalc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/service/ICalc$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLCM(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isPrime(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
