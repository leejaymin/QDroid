.class Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$4;
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
    .line 177
    iput-object p1, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$4;->this$0:Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;

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

    .line 181
    const/4 v4, 0x1

    const-string v5, "getData"

    invoke-static {p2, v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 182
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 183
    .local v0, __getData_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "type"

    invoke-direct {v2, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, __type_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 187
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v6

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    .local v3, type:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 193
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, __retVal:Ljava/lang/Object;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
