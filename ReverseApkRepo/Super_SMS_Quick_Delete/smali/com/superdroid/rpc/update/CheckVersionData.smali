.class public Lcom/superdroid/rpc/update/CheckVersionData;
.super Ljava/lang/Object;
.source "CheckVersionData.java"


# static fields
.field public static final ALREADY_NEWEST_VERSION:I = 0x2

.field public static final HAS_NEWER_VERSION:I = 0x1

.field public static final RPC_ERROR:I = -0x1


# instance fields
.field public apkDownloadLink:Ljava/lang/String;

.field public changeLog:Ljava/lang/String;

.field public checkResult:I

.field public latestVersionCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/superdroid/rpc/update/CheckVersionData;->checkResult:I

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "result"
    .parameter "versionCode"
    .parameter "link"
    .parameter "log"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/superdroid/rpc/update/CheckVersionData;->checkResult:I

    .line 15
    iput p2, p0, Lcom/superdroid/rpc/update/CheckVersionData;->latestVersionCode:I

    .line 16
    iput-object p3, p0, Lcom/superdroid/rpc/update/CheckVersionData;->apkDownloadLink:Ljava/lang/String;

    .line 17
    const/16 v0, 0xd

    const/16 v1, 0x20

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/rpc/update/CheckVersionData;->changeLog:Ljava/lang/String;

    .line 18
    return-void
.end method
