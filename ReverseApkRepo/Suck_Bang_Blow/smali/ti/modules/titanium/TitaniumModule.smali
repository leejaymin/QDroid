.class public Lti/modules/titanium/TitaniumModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "TitaniumModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;
.implements Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/TitaniumModule$Timer;
    }
.end annotation


# static fields
.field private static final LCAT:Ljava/lang/String; = "TitaniumModule"


# instance fields
.field private basePath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentTimerId:I

.field private numberFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private timers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lti/modules/titanium/TitaniumModule$Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "tiContext"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->isServiceContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiContext;->addOnServiceLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnServiceLifecycleEvent;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiContext;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiContext$OnLifecycleEvent;)V

    goto :goto_0
.end method

.method private createTimer(Lorg/appcelerator/titanium/kroll/KrollContext;Ljava/lang/Object;J[Ljava/lang/Object;Z)I
    .locals 10
    .parameter "context"
    .parameter "fn"
    .parameter "timeout"
    .parameter "args"
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 178
    instance-of v2, p2, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v2, :cond_0

    .line 179
    move-object v0, p2

    check-cast v0, Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    .line 180
    .local v5, callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    iget v3, p0, Lti/modules/titanium/TitaniumModule;->currentTimerId:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lti/modules/titanium/TitaniumModule;->currentTimerId:I

    .line 181
    .local v3, timerId:I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/kroll/KrollContext;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiMessageQueue;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 183
    .local v4, handler:Landroid/os/Handler;
    new-instance v1, Lti/modules/titanium/TitaniumModule$Timer;

    move-object v2, p0

    move-wide v6, p3

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lti/modules/titanium/TitaniumModule$Timer;-><init>(Lti/modules/titanium/TitaniumModule;ILandroid/os/Handler;Lorg/appcelerator/titanium/kroll/KrollCallback;J[Ljava/lang/Object;Z)V

    .line 184
    .local v1, timer:Lti/modules/titanium/TitaniumModule$Timer;
    iget-object v2, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v1}, Lti/modules/titanium/TitaniumModule$Timer;->schedule()V

    .line 186
    return v3

    .line 188
    .end local v1           #timer:Lti/modules/titanium/TitaniumModule$Timer;
    .end local v3           #timerId:I
    .end local v4           #handler:Landroid/os/Handler;
    .end local v5           #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t know how to call callback of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public alert(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 4
    .parameter "invocation"
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 223
    if-nez p2, :cond_0

    move-object v0, v3

    .line 224
    .local v0, msg:Ljava/lang/String;
    :goto_0
    const-string v1, "ALERT"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->isServiceContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string v1, "TitaniumModule"

    const-string v2, "alert() called inside service -- no attempt will be made to display it to user interface."

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_1
    return-void

    .line 223
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 229
    .restart local v0       #msg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Alert"

    invoke-static {v1, v2, v0, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method public cancelTimers()V
    .locals 3

    .prologue
    .line 234
    iget-object v2, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, timerIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lti/modules/titanium/TitaniumModule$Timer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/TitaniumModule$Timer;

    .line 237
    .local v0, timer:Lti/modules/titanium/TitaniumModule$Timer;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lti/modules/titanium/TitaniumModule$Timer;->cancel()V

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 242
    .end local v0           #timer:Lti/modules/titanium/TitaniumModule$Timer;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 243
    return-void
.end method

.method public clearInterval(I)V
    .locals 0
    .parameter "timerId"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lti/modules/titanium/TitaniumModule;->clearTimeout(I)V

    .line 218
    return-void
.end method

.method public clearTimeout(I)V
    .locals 3
    .parameter "timerId"

    .prologue
    .line 201
    iget-object v1, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lti/modules/titanium/TitaniumModule;->timers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/TitaniumModule$Timer;

    .line 203
    .local v0, timer:Lti/modules/titanium/TitaniumModule$Timer;
    invoke-virtual {v0}, Lti/modules/titanium/TitaniumModule$Timer;->cancel()V

    .line 205
    .end local v0           #timer:Lti/modules/titanium/TitaniumModule$Timer;
    :cond_0
    return-void
.end method

.method public getBuildDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "http.agent"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Titanium/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public include(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)V
    .locals 11
    .parameter "invocation"
    .parameter "files"

    .prologue
    .line 104
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v7

    .line 105
    .local v7, tiContext:Lorg/appcelerator/titanium/TiContext;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 108
    .local v2, filename:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 109
    .local v5, popContext:Z
    :try_start_0
    iget-object v8, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    iget-object v8, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiContext;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v5, 0x1

    .line 113
    :cond_0
    const/4 v9, 0x0

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v8, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v8}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, resolved:Ljava/lang/String;
    iget-object v8, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    const/4 v9, 0x0

    const/16 v10, 0x2f

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v7, v6}, Lorg/appcelerator/titanium/TiContext;->evalFile(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v8, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 118
    if-eqz v5, :cond_1

    .line 119
    iget-object v8, p0, Lti/modules/titanium/TitaniumModule;->basePath:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v6           #resolved:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 122
    .local v1, e:Ljava/io/IOException;
    const-string v8, "TitaniumModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while evaluating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #filename:Ljava/lang/Object;
    .end local v5           #popContext:Z
    :cond_2
    return-void
.end method

.method public localize(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "invocation"
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 337
    const/4 v2, 0x0

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getAndroidContext()Landroid/content/ContextWrapper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 342
    .end local p0
    :goto_0
    return-object v2

    .line 341
    .restart local p0
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 342
    .local v0, e:Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    array-length v2, p2

    if-le v2, v5, :cond_0

    aget-object p0, p2, v5

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 419
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->cancelTimers()V

    .line 420
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 421
    return-void
.end method

.method public onDestroy(Landroid/app/Service;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 432
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->cancelTimers()V

    .line 433
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 425
    invoke-virtual {p0}, Lti/modules/titanium/TitaniumModule;->cancelTimers()V

    .line 426
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onStop(Landroid/app/Activity;)V

    .line 427
    return-void
.end method

.method public require(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollProxy;
    .locals 22
    .parameter "invocation"
    .parameter "path"

    .prologue
    .line 360
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/appcelerator/titanium/TiRootActivity;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    .line 361
    .local v6, ctx:Lorg/appcelerator/titanium/TiContext;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/TitaniumModule;->requireNativeModule(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v13

    .line 362
    .local v13, module:Lorg/appcelerator/kroll/KrollModule;
    if-eqz v13, :cond_0

    .line 363
    invoke-virtual {v13}, Lorg/appcelerator/kroll/KrollModule;->getModuleInfo()Lorg/appcelerator/kroll/KrollModuleInfo;

    move-result-object v10

    .line 364
    .local v10, info:Lorg/appcelerator/kroll/KrollModuleInfo;
    const-string v19, "TitaniumModule"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Succesfully loaded module: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lorg/appcelerator/kroll/KrollModuleInfo;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lorg/appcelerator/kroll/KrollModuleInfo;->getVersion()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v13

    .line 414
    .end local v10           #info:Lorg/appcelerator/kroll/KrollModuleInfo;
    :goto_0
    return-object v19

    .line 369
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "app://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".js"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, fileUrl:Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    const/16 v20, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v18

    .line 371
    .local v18, tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v18, :cond_3

    .line 375
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/io/TiBaseFile;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v4

    .line 376
    .local v4, blob:Lorg/appcelerator/titanium/TiBlob;
    if-nez v4, :cond_1

    .line 377
    const-string v19, "TitaniumModule"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t read required file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v19, 0x0

    goto :goto_0

    .line 382
    :cond_1
    new-instance v16, Lorg/appcelerator/kroll/KrollProxy;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 383
    .local v16, proxy:Lorg/appcelerator/kroll/KrollProxy;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v5, buf:Ljava/lang/StringBuilder;
    const-string v19, "(function(exports){"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v19, "return exports;"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v19, "})({})"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiContext;->evalJS(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mozilla/javascript/Scriptable;

    .line 391
    .local v17, result:Lorg/mozilla/javascript/Scriptable;
    invoke-interface/range {v17 .. v17}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    .local v3, arr$:[Ljava/lang/Object;
    array-length v12, v3

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_2

    aget-object v11, v3, v9

    .line 393
    .local v11, key:Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 394
    .local v14, propName:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/mozilla/javascript/Scriptable;

    .line 395
    .local v15, propValue:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, v16

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 399
    .end local v11           #key:Ljava/lang/Object;
    .end local v14           #propName:Ljava/lang/String;
    .end local v15           #propValue:Lorg/mozilla/javascript/Scriptable;
    :cond_2
    const-string v19, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const-string v19, "uri"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v16

    .line 402
    goto/16 :goto_0

    .line 404
    .end local v3           #arr$:[Ljava/lang/Object;
    .end local v4           #blob:Lorg/appcelerator/titanium/TiBlob;
    .end local v5           #buf:Ljava/lang/StringBuilder;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v16           #proxy:Lorg/appcelerator/kroll/KrollProxy;
    .end local v17           #result:Lorg/mozilla/javascript/Scriptable;
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 406
    .local v7, ex:Ljava/lang/Exception;
    const-string v19, "TitaniumModule"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error loading module named: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    invoke-static {v7}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 408
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 413
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "couldn\'t find module: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;)V

    .line 414
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method protected requireNativeModule(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 347
    const-string v1, "TitaniumModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to include native module: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {p2}, Lorg/appcelerator/kroll/KrollModule;->getModuleInfo(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModuleInfo;

    move-result-object v0

    .line 349
    .local v0, info:Lorg/appcelerator/kroll/KrollModuleInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 351
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/appcelerator/titanium/TiApplication;->requireModule(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollModuleInfo;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v1

    goto :goto_0
.end method

.method public setInterval(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;J[Ljava/lang/Object;)I
    .locals 7
    .parameter "invocation"
    .parameter "fn"
    .parameter "timeout"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/TitaniumModule;->createTimer(Lorg/appcelerator/titanium/kroll/KrollContext;Ljava/lang/Object;J[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public setTimeout(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;J[Ljava/lang/Object;)I
    .locals 7
    .parameter "invocation"
    .parameter "fn"
    .parameter "timeout"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/TitaniumModule;->createTimer(Lorg/appcelerator/titanium/kroll/KrollContext;Ljava/lang/Object;J[Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "format"
    .parameter "args"

    .prologue
    .line 250
    :try_start_0
    const-string v1, "%d"

    const-string v2, "%1.0f"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    array-length v1, p2

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 256
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 259
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TitaniumModule"

    const-string v2, "Error in string format"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stringFormatCurrency(D)Ljava/lang/String;
    .locals 1
    .parameter "currency"

    .prologue
    .line 289
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stringFormatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "date"
    .end parameter
    .parameter "format"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 267
    const/4 v1, 0x3

    .line 268
    .local v1, style:I
    const-string v2, "medium"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const/4 v1, 0x2

    .line 274
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 275
    .local v0, fmt:Ljava/text/DateFormat;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 270
    .end local v0           #fmt:Ljava/text/DateFormat;
    :cond_1
    const-string v2, "long"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stringFormatDecimal([Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .parameter "args"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v10, ""

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, pattern:Ljava/lang/String;
    const/4 v3, 0x0

    .line 297
    .local v3, locale:Ljava/lang/String;
    array-length v6, p1

    if-ne v6, v9, :cond_3

    .line 299
    aget-object v6, p1, v8

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, test:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 301
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    :cond_0
    move-object v4, v5

    .line 313
    .end local v5           #test:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_4

    const-string v7, ""

    move-object v7, v10

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keysep "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_5

    const-string v7, ""

    move-object v7, v10

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 317
    iget-object v6, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    .line 331
    .local v1, format:Ljava/text/NumberFormat;
    :goto_3
    const/4 v6, 0x0

    aget-object p0, p1, v6

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {v1, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 304
    .end local v1           #format:Ljava/text/NumberFormat;
    .end local v2           #key:Ljava/lang/String;
    .restart local v5       #test:Ljava/lang/String;
    .restart local p0
    :cond_2
    move-object v3, v5

    goto :goto_0

    .line 307
    .end local v5           #test:Ljava/lang/String;
    :cond_3
    array-length v6, p1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 309
    aget-object v6, p1, v8

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 310
    aget-object v6, p1, v9

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v7, v3

    .line 313
    goto :goto_1

    :cond_5
    move-object v7, v4

    goto :goto_2

    .line 319
    .restart local v2       #key:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_8

    .line 320
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 325
    .restart local v1       #format:Ljava/text/NumberFormat;
    :goto_4
    if-eqz v4, :cond_7

    instance-of v6, v1, Ljava/text/DecimalFormat;

    if-eqz v6, :cond_7

    .line 326
    move-object v0, v1

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v6, v0

    invoke-virtual {v6, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 328
    :cond_7
    iget-object v6, p0, Lti/modules/titanium/TitaniumModule;->numberFormats:Ljava/util/Map;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 322
    .end local v1           #format:Ljava/text/NumberFormat;
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .restart local v1       #format:Ljava/text/NumberFormat;
    goto :goto_4
.end method

.method public stringFormatTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 281
    const/4 v1, 0x3

    .line 282
    .local v1, style:I
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 283
    .local v0, fmt:Ljava/text/DateFormat;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public testThrow()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Testing throwing throwables"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
