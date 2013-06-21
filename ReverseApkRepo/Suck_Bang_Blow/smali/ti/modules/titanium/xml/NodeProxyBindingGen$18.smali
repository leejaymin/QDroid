.class Lti/modules/titanium/xml/NodeProxyBindingGen$18;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "NodeProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/xml/NodeProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/xml/NodeProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 690
    iput-object p1, p0, Lti/modules/titanium/xml/NodeProxyBindingGen$18;->this$0:Lti/modules/titanium/xml/NodeProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-class v10, Lti/modules/titanium/xml/NodeProxy;

    .line 694
    const/4 v6, 0x2

    const-string v7, "replaceChild"

    invoke-static {p2, v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 695
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    .line 696
    .local v2, __replaceChild_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "newChild"

    invoke-direct {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, __newChild_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 700
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v9

    const-class v8, Lti/modules/titanium/xml/NodeProxy;

    invoke-virtual {v6, p1, v7, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/xml/NodeProxy;

    .line 702
    .local v4, newChild:Lti/modules/titanium/xml/NodeProxy;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 703
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 704
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "oldChild"

    invoke-direct {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 706
    .local v1, __oldChild_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 708
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p2, v7

    const-class v8, Lti/modules/titanium/xml/NodeProxy;

    invoke-virtual {v6, p1, v7, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/xml/NodeProxy;

    .line 710
    .local v5, oldChild:Lti/modules/titanium/xml/NodeProxy;
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 711
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 714
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/NodeProxy;

    invoke-virtual {p0, v4, v5}, Lti/modules/titanium/xml/NodeProxy;->replaceChild(Lti/modules/titanium/xml/NodeProxy;Lti/modules/titanium/xml/NodeProxy;)Lti/modules/titanium/xml/NodeProxy;

    move-result-object v3

    .line 721
    .local v3, __retVal:Lti/modules/titanium/xml/NodeProxy;
    invoke-virtual {v2, p1, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6
.end method
