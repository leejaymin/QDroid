.class public Lcom/kavsdk/license/LicenseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2c8e59156c9f4b4eL


# instance fields
.field private mError:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kavsdk/license/LicenseException;->mError:I

    .line 17
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/kavsdk/license/LicenseException;->mError:I

    return v0
.end method
