.class public Lcom/feelingk/lguiab/vo/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private requestTime:Ljava/lang/String;

.field private responseTime:Ljava/lang/String;

.field private resultCode:I

.field private serviceName:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->serviceName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->requestTime:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->responseTime:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->msg:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->responseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->resultCode:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->status:I

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->msg:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->requestTime:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setResponseTime(Ljava/lang/String;)V
    .locals 0
    .parameter "responseTime"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->responseTime:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 45
    iput p1, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->resultCode:I

    .line 46
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->serviceName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 51
    iput p1, p0, Lcom/feelingk/lguiab/vo/MessageInfo;->status:I

    .line 52
    return-void
.end method
