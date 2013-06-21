.class public abstract Lcom/kaf/contentsbox/ICertificateRepositoryManager;
.super Ljava/lang/Object;
.source "ICertificateRepositoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaf/contentsbox/ICertificateRepositoryManager$ContentsBoxConnection;,
        Lcom/kaf/contentsbox/ICertificateRepositoryManager$ServiceConnectionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kaf/contentsbox/ICertificateRepositoryManager$ServiceConnectionListener;)V
    .locals 0
    .parameter "context"
    .parameter "sessionKeyListener"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public closeCertFile(ILjava/io/FileDescriptor;I)V
    .locals 0
    .parameter "id"
    .parameter "fd"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method public connect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public deleteCertInfo(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    return-void
.end method

.method public getCertInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertCertInfo(Landroid/content/ContentValues;)I
    .locals 1
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public openCertFile(II)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "id"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCertInfo(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, -0x1

    return v0
.end method
