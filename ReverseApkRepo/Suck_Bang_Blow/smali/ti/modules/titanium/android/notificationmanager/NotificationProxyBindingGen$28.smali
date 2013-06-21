.class Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$28;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "NotificationProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1055
    iput-object p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$28;->this$0:Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1059
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "pattern"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v0, __pattern_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v2, 0x0

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-static {p1, p2, v2, v3, v4}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->getVarArgs(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;ILorg/appcelerator/kroll/KrollJavascriptConverter;Lorg/appcelerator/kroll/KrollDefaultValueProvider;)[Ljava/lang/Object;

    move-result-object v1

    .line 1062
    .local v1, pattern:[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 1063
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 1068
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setVibratePattern([Ljava/lang/Object;)V

    .line 1071
    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v2
.end method
