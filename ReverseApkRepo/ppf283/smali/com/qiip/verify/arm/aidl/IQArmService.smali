.class public interface abstract Lcom/qiip/verify/arm/aidl/IQArmService;
.super Ljava/lang/Object;
.source "IQArmService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiip/verify/arm/aidl/IQArmService$Stub;
    }
.end annotation


# virtual methods
.method public abstract executeArm(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
