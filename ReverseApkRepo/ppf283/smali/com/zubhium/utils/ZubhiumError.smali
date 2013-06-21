.class public Lcom/zubhium/utils/ZubhiumError;
.super Ljava/lang/Throwable;
.source "ZubhiumError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "code"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorCode:I

    .line 28
    iput p2, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorCode:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "type"
    .parameter "code"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorCode:I

    .line 22
    iput-object p2, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorType:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorCode:I

    .line 24
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zubhium/utils/ZubhiumError;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
