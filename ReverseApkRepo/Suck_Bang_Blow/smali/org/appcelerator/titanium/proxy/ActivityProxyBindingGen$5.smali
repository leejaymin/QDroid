.class Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$5;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "ActivityProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 209
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$5;->this$0:Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->finish(Lorg/appcelerator/kroll/KrollInvocation;)V

    .line 221
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v0
.end method
