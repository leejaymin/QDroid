.class Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$7;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "ClipboardModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 255
    iput-object p1, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$7;->this$0:Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;

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

    .line 259
    const/4 v2, 0x1

    const-string v3, "setText"

    invoke-static {p2, v2, v3}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 260
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "text"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, __text_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 264
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    aget-object v3, p2, v4

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 272
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->setText(Ljava/lang/String;)V

    .line 275
    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v2
.end method
