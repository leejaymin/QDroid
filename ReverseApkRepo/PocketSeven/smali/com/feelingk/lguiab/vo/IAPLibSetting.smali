.class public Lcom/feelingk/lguiab/vo/IAPLibSetting;
.super Ljava/lang/Object;
.source "IAPLibSetting.java"


# static fields
.field public static serverType:Z


# instance fields
.field private appId:Ljava/lang/String;

.field private bpIp:Ljava/lang/String;

.field private bpPort:Ljava/lang/String;

.field public clientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/feelingk/lguiab/LguIAPLib$OnClientListener;)V
    .locals 1
    .parameter "context"
    .parameter "appId"
    .parameter "bpIp"
    .parameter "bpPort"
    .parameter "serverType"
    .parameter "clientListener"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->context:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->appId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpIp:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpPort:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->clientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    .line 39
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->appId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpIp:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpPort:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p5}, Lcom/feelingk/lguiab/vo/IAPLibSetting;->setServerType(Z)V

    .line 44
    iput-object p6, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->clientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    .line 45
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBpIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpIp:Ljava/lang/String;

    return-object v0
.end method

.method public getBpPort()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpPort:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getClientListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->clientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getServerType()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->serverType:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->appId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setBpIp(Ljava/lang/String;)V
    .locals 0
    .parameter "bpIp"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpIp:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setBpPort(Ljava/lang/String;)V
    .locals 0
    .parameter "bpPort"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->bpPort:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setClientListener(Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;)V
    .locals 0
    .parameter "clientListener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->clientListener:Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    .line 115
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public setServerType(Z)V
    .locals 0
    .parameter "serverType"

    .prologue
    .line 118
    sput-boolean p1, Lcom/feelingk/lguiab/vo/IAPLibSetting;->serverType:Z

    .line 119
    return-void
.end method
