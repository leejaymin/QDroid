.class Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$3;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "NotificationManagerModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 153
    iput-object p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$3;->this$0:Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;

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
    const/4 v4, 0x0

    .line 157
    const/4 v2, 0x1

    const-string v3, "cancel"

    invoke-static {p2, v2, v3}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 158
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "id"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, __id_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 162
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    aget-object v3, p2, v4

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, id:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 170
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;

    invoke-virtual {p0, p1, v1}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->cancel(Lorg/appcelerator/kroll/KrollInvocation;I)V

    .line 175
    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v2
.end method