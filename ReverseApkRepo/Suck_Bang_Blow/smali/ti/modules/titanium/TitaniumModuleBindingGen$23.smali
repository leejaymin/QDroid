.class Lti/modules/titanium/TitaniumModuleBindingGen$23;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TitaniumModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/TitaniumModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/TitaniumModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 778
    iput-object p1, p0, Lti/modules/titanium/TitaniumModuleBindingGen$23;->this$0:Lti/modules/titanium/TitaniumModuleBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 782
    const/4 v5, 0x1

    const-string v6, "stringFormatCurrency"

    invoke-static {p2, v5, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 783
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    .line 784
    .local v2, __stringFormatCurrency_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v5, "currency"

    invoke-direct {v0, v5}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, __currency_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 788
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    aget-object v6, p2, v7

    const-class v7, Ljava/lang/Double;

    invoke-virtual {v5, p1, v6, v7}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 790
    .local v3, currency:D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 794
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/TitaniumModule;

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/TitaniumModule;->stringFormatCurrency(D)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, __retVal:Ljava/lang/String;
    invoke-virtual {v2, p1, v1}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method
