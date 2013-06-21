.class Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$3;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "ServiceProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 138
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$3;->this$0:Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 145
    .local v0, __getIntent_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;

    move-result-object v1

    .line 150
    .local v1, __retVal:Lorg/appcelerator/titanium/proxy/IntentProxy;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
