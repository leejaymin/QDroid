.class Lti/modules/titanium/ui/PickerColumnProxyBindingGen$2;
.super Lorg/appcelerator/kroll/KrollDynamicProperty;
.source "PickerColumnProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/PickerColumnProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 111
    iput-object p1, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$2;->this$0:Lti/modules/titanium/ui/PickerColumnProxyBindingGen;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/appcelerator/kroll/KrollDynamicProperty;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"

    .prologue
    .line 116
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 119
    .local v0, __getRows_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getRows()[Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v1

    .line 124
    .local v1, __retVal:[Lti/modules/titanium/ui/PickerRowProxy;
    invoke-virtual {v0, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 5
    .parameter "__invocation"
    .parameter "__value"

    .prologue
    .line 130
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v3, "rows"

    invoke-direct {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, __rows_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    const-class v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, p2, v4}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 133
    .local v2, rows:[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 139
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/PickerColumnProxy;->setRows([Ljava/lang/Object;)V

    .line 142
    return-void
.end method
