.class Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$4;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "AnalyticsModuleBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 207
    iput-object p1, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$4;->this$0:Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;

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
    .line 211
    const/4 v8, 0x2

    const-string v9, "navEvent"

    invoke-static {p2, v8, v9}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 212
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "from"

    invoke-direct {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, __from_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 216
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 218
    .local v6, from:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 220
    new-instance v3, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "to"

    invoke-direct {v3, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, __to_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 224
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 226
    .local v7, to:Ljava/lang/String;
    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 228
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "event"

    invoke-direct {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, __event_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 231
    array-length v8, p2

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    .line 233
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 240
    .local v5, event:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 242
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "data"

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, __data_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 245
    array-length v8, p2

    const/4 v9, 0x4

    if-lt v8, v9, :cond_1

    .line 247
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, p2, v9

    const-class v10, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .line 254
    .local v4, data:Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 260
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/analytics/AnalyticsModule;

    invoke-virtual {p0, v6, v7, v5, v4}, Lti/modules/titanium/analytics/AnalyticsModule;->navEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 266
    sget-object v8, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v8

    .line 236
    .end local v0           #__data_argument:Lorg/appcelerator/kroll/KrollArgument;
    .end local v4           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v5           #event:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 237
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5       #event:Ljava/lang/String;
    goto :goto_0

    .line 250
    .restart local v0       #__data_argument:Lorg/appcelerator/kroll/KrollArgument;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 251
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const-class v9, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v8, v9}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .restart local v4       #data:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_1
.end method
