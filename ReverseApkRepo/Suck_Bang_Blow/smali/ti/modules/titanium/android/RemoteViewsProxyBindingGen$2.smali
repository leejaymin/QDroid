.class Lti/modules/titanium/android/RemoteViewsProxyBindingGen$2;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "RemoteViewsProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/RemoteViewsProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 136
    iput-object p1, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$2;->this$0:Lti/modules/titanium/android/RemoteViewsProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 140
    const/4 v0, 0x4

    const-string v10, "setChronometer"

    invoke-static {p2, v0, v10}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 141
    new-instance v9, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "viewId"

    invoke-direct {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 143
    .local v9, __viewId_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v9, v12}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 145
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    aget-object v10, p2, v12

    const-class v11, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v10, v11}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    .local v1, viewId:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 149
    new-instance v6, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "base"

    invoke-direct {v6, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 151
    .local v6, __base_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v6, v12}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 153
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v10, 0x1

    aget-object v10, p2, v10

    const-class v11, Ljava/lang/Long;

    invoke-virtual {v0, p1, v10, v11}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 155
    .local v2, base:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 157
    new-instance v7, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "format"

    invoke-direct {v7, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 159
    .local v7, __format_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v7, v12}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 161
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v10, 0x2

    aget-object v10, p2, v10

    const-class v11, Ljava/lang/String;

    invoke-virtual {v0, p1, v10, v11}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    .local v4, format:Ljava/lang/String;
    invoke-virtual {v7, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 165
    new-instance v8, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "started"

    invoke-direct {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 167
    .local v8, __started_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v8, v12}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 169
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v10, 0x3

    aget-object v10, p2, v10

    const-class v11, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v10, v11}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 171
    .local v5, started:Z
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 177
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/RemoteViewsProxy;

    invoke-virtual/range {v0 .. v5}, Lti/modules/titanium/android/RemoteViewsProxy;->setChronometer(IJLjava/lang/String;Z)V

    .line 183
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v0
.end method
