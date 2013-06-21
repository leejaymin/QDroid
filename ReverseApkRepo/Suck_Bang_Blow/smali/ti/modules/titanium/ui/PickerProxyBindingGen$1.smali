.class Lti/modules/titanium/ui/PickerProxyBindingGen$1;
.super Lorg/appcelerator/kroll/KrollDynamicProperty;
.source "PickerProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/PickerProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/PickerProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    iput-object p1, p0, Lti/modules/titanium/ui/PickerProxyBindingGen$1;->this$0:Lti/modules/titanium/ui/PickerProxyBindingGen;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/appcelerator/kroll/KrollDynamicProperty;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"

    .prologue
    .line 105
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 108
    .local v0, __getColumns_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v1

    .line 113
    .local v1, __retVal:[Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 4
    .parameter "__invocation"
    .parameter "__value"

    .prologue
    .line 119
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "passedColumns"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, __passedColumns_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 123
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, p1, p2, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, passedColumns:Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 131
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->setColumns(Ljava/lang/Object;)V

    .line 134
    return-void
.end method
