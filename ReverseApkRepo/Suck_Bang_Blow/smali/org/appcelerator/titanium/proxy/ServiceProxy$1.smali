.class Lorg/appcelerator/titanium/proxy/ServiceProxy$1;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/ServiceProxy;->bindAndInvokeService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/ServiceProxy;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 127
    instance-of v4, p2, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    if-eqz v4, :cond_1

    .line 128
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;

    move-object v1, v0

    .line 129
    .local v1, binder:Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .line 130
    .local v2, proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;->getService()Landroid/app/Service;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/TiBaseService;

    .line 131
    .local v3, tiService:Lorg/appcelerator/titanium/TiBaseService;
    invoke-static {}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const-string v4, "TiServiceProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " service successfully bound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getServiceIntentId()I

    move-result v4

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/TiBaseService;->registerBoundTiContext(ILorg/appcelerator/titanium/TiContext;)I

    move-result v4

    #setter for: Lorg/appcelerator/titanium/proxy/ServiceProxy;->serviceInstanceId:I
    invoke-static {v2, v4}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->access$102(Lorg/appcelerator/titanium/proxy/ServiceProxy;I)I

    .line 135
    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->invokeBoundService(Landroid/app/Service;)V

    .line 138
    .end local v1           #binder:Lorg/appcelerator/titanium/TiBaseService$TiServiceBinder;
    .end local v2           #proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    .end local v3           #tiService:Lorg/appcelerator/titanium/TiBaseService;
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 123
    return-void
.end method
