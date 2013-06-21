.class public Lcom/sugree/twitter/TwitterError;
.super Ljava/lang/Throwable;


# static fields
.field private static final serialVersionUID:J = 0x5bf5d7909047db2aL


# instance fields
.field private mErrorCode:I

.field private mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sugree/twitter/TwitterError;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sugree/twitter/TwitterError;->mErrorCode:I

    iput-object p2, p0, Lcom/sugree/twitter/TwitterError;->mErrorType:Ljava/lang/String;

    iput p3, p0, Lcom/sugree/twitter/TwitterError;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/sugree/twitter/TwitterError;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwitterError;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
