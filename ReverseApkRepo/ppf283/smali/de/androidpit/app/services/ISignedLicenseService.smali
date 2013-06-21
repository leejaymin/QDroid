.class public interface abstract Lde/androidpit/app/services/ISignedLicenseService;
.super Ljava/lang/Object;
.source "ISignedLicenseService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/androidpit/app/services/ISignedLicenseService$Stub;
    }
.end annotation


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLicensed(Ljava/lang/String;Ljava/lang/String;IZ)Lde/androidpit/app/services/SignedResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
