.class Lti/modules/titanium/media/SoundProxyBindingGen$18;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "SoundProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/SoundProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/SoundProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 559
    iput-object p1, p0, Lti/modules/titanium/media/SoundProxyBindingGen$18;->this$0:Lti/modules/titanium/media/SoundProxyBindingGen;

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
    .line 563
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 566
    .local v0, __isLooping_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/media/SoundProxy;

    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->isLooping()Z

    move-result v1

    .line 571
    .local v1, __retVal:Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
