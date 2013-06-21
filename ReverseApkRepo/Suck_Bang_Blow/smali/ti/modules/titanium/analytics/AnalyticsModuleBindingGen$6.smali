.class Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$6;
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
    .line 326
    iput-object p1, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$6;->this$0:Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;

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
    .line 330
    const/4 v0, 0x4

    const-string v1, "timedEvent"

    invoke-static {p2, v0, v1}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 331
    new-instance v10, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "event"

    invoke-direct {v10, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 333
    .local v10, __event_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 335
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, event:Ljava/lang/String;
    invoke-virtual {v10, v1}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 339
    new-instance v11, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "start"

    invoke-direct {v11, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 341
    .local v11, __start_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 343
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, p2, v2

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 345
    .local v2, start:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 347
    new-instance v12, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "stop"

    invoke-direct {v12, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 349
    .local v12, __stop_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 351
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v4, 0x2

    aget-object v4, p2, v4

    const-class v5, Ljava/lang/Long;

    invoke-virtual {v0, p1, v4, v5}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 353
    .local v4, stop:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p1, v12}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 355
    new-instance v9, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "duration"

    invoke-direct {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 357
    .local v9, __duration_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 359
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v6, 0x3

    aget-object v6, p2, v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v6, v7}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 361
    .local v6, duration:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 363
    new-instance v8, Lorg/appcelerator/kroll/KrollArgument;

    const-string v0, "data"

    invoke-direct {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 365
    .local v8, __data_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 366
    array-length v0, p2

    const/4 v7, 0x5

    if-lt v0, v7, :cond_0

    .line 368
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const/4 v7, 0x4

    aget-object v7, p2, v7

    const-class v9, Lorg/appcelerator/kroll/KrollDict;

    .end local v9           #__duration_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, p1, v7, v9}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollDict;

    .line 375
    .local v7, data:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    invoke-virtual {v8, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 381
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/analytics/AnalyticsModule;

    invoke-virtual/range {v0 .. v7}, Lti/modules/titanium/analytics/AnalyticsModule;->timedEvent(Ljava/lang/String;JJILorg/appcelerator/kroll/KrollDict;)V

    .line 388
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v0

    .line 371
    .end local v7           #data:Lorg/appcelerator/kroll/KrollDict;
    .restart local v9       #__duration_argument:Lorg/appcelerator/kroll/KrollArgument;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 372
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    const-class v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/kroll/KrollDict;

    .restart local v7       #data:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0
.end method
