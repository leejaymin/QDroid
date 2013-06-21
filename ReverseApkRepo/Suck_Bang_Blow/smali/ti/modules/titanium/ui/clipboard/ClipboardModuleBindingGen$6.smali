.class Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$6;
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
    .line 237
    iput-object p1, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$6;->this$0:Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;

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
    .line 245
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/clipboard/ClipboardModule;

    invoke-virtual {p0}, Lti/modules/titanium/ui/clipboard/ClipboardModule;->clearText()V

    .line 247
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v0
.end method
