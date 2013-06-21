.class Lti/modules/titanium/android/AndroidModuleBindingGen$12;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "AndroidModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/AndroidModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/AndroidModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/AndroidModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 719
    iput-object p1, p0, Lti/modules/titanium/android/AndroidModuleBindingGen$12;->this$0:Lti/modules/titanium/android/AndroidModuleBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 723
    const/4 v4, 0x1

    const-string v5, "createService"

    invoke-static {p2, v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 724
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 725
    .local v0, __createService_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "intentProxy"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 727
    .local v1, __intentProxy_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 729
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v6

    const-class v6, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 731
    .local v3, intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 732
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 735
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/android/AndroidModule;

    invoke-virtual {p0, p1, v3}, Lti/modules/titanium/android/AndroidModule;->createService(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/IntentProxy;)Lorg/appcelerator/titanium/proxy/ServiceProxy;

    move-result-object v2

    .line 743
    .local v2, __retVal:Lorg/appcelerator/titanium/proxy/ServiceProxy;
    invoke-virtual {v0, p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
