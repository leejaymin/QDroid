.class public Lcom/feelingk/lguiab/vo/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# instance fields
.field private responseMsg:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/HttpResult;->responseMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/feelingk/lguiab/vo/HttpResult;->status:I

    return v0
.end method

.method public setResponseMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "responseMsg"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/HttpResult;->responseMsg:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 25
    iput p1, p0, Lcom/feelingk/lguiab/vo/HttpResult;->status:I

    .line 26
    return-void
.end method
