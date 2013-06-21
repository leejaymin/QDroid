.class Lti/modules/titanium/TitaniumModuleBindingGen$24;
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
    .line 808
    iput-object p1, p0, Lti/modules/titanium/TitaniumModuleBindingGen$24;->this$0:Lti/modules/titanium/TitaniumModuleBindingGen;

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
    .line 812
    const/4 v0, 0x2

    const-string v1, "setInterval"

    invoke-static {p2, v0, v1}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 813
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    .line 814
    .local v9, __setInterval_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v7, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "fn"

    invoke-direct {v7, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 816
    .local v7, __fn_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 818
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 820
    .local v2, fn:Ljava/lang/Object;
    invoke-virtual {v7, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 821
    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 822
    new-instance v10, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "timeout"

    invoke-direct {v10, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 824
    .local v10, __timeout_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 826
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p2, v1

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 828
    .local v3, timeout:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 829
    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 830
    new-instance v6, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "args"

    invoke-direct {v6, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 832
    .local v6, __args_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x2

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-static {p1, p2, v0, v1, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->getVarArgs(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;ILorg/appcelerator/kroll/KrollJavascriptConverter;Lorg/appcelerator/kroll/KrollDefaultValueProvider;)[Ljava/lang/Object;

    move-result-object v5

    .line 833
    .local v5, args:[Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 834
    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 837
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/TitaniumModule;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/TitaniumModule;->setInterval(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;J[Ljava/lang/Object;)I

    move-result v8

    .line 847
    .local v8, __retVal:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
