.class Lti/modules/titanium/android/TiJSService$1;
.super Ljava/lang/Object;
.source "TiJSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/TiJSService;->executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/TiJSService;

.field final synthetic val$fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

.field final synthetic val$ffullUrl:Ljava/lang/String;

.field final synthetic val$ftiContext:Lorg/appcelerator/titanium/TiContext;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/TiJSService;Lorg/appcelerator/titanium/proxy/ServiceProxy;Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lti/modules/titanium/android/TiJSService$1;->this$0:Lti/modules/titanium/android/TiJSService;

    iput-object p2, p0, Lti/modules/titanium/android/TiJSService$1;->val$fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    iput-object p3, p0, Lti/modules/titanium/android/TiJSService$1;->val$ftiContext:Lorg/appcelerator/titanium/TiContext;

    iput-object p4, p0, Lti/modules/titanium/android/TiJSService$1;->val$ffullUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSService$1;->val$fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v2, "resume"

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 73
    iget-object v1, p0, Lti/modules/titanium/android/TiJSService$1;->val$ftiContext:Lorg/appcelerator/titanium/TiContext;

    iget-object v2, p0, Lti/modules/titanium/android/TiJSService$1;->val$ffullUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lti/modules/titanium/android/TiJSService$1;->val$fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v2, "pause"

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 75
    iget-object v1, p0, Lti/modules/titanium/android/TiJSService$1;->val$fProxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    const-string v2, "stop"

    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "TiJSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure evaluating service JS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/android/TiJSService$1;->this$0:Lti/modules/titanium/android/TiJSService;

    iget-object v3, v3, Lti/modules/titanium/android/TiJSService;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
