.class public Lcom/adwhirl/adapters/EventAdapter;
.super Lcom/adwhirl/adapters/AdWhirlAdapter;
.source "EventAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 0
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/adwhirl/adapters/AdWhirlAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V

    .line 32
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 10

    .prologue
    const-string v9, "AdWhirl SDK"

    .line 36
    sget-boolean v7, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v7, :cond_0

    const-string v7, "AdWhirl SDK"

    const-string v7, "Event notification request initiated"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object v7, p0, Lcom/adwhirl/adapters/EventAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 39
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_1

    .line 87
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v7, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

    if-eqz v7, :cond_7

    .line 45
    iget-object v7, p0, Lcom/adwhirl/adapters/EventAdapter;->ration:Lcom/adwhirl/obj/Ration;

    iget-object v2, v7, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    .line 46
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x0

    .line 47
    .local v5, method:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 48
    sget-boolean v7, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v7, :cond_2

    const-string v7, "AdWhirl SDK"

    const-string v7, "Event key is null"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0

    .line 53
    :cond_3
    const-string v7, "|;|"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 54
    .local v6, methodIndex:I
    if-gez v6, :cond_5

    .line 55
    sget-boolean v7, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v7, :cond_4

    const-string v7, "AdWhirl SDK"

    const-string v7, "Event key separator not found"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_4
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0

    .line 60
    :cond_5
    add-int/lit8 v7, v6, 0x3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 62
    iget-object v7, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 65
    .local v3, listenerClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 66
    .local v4, listenerMethod:Ljava/lang/reflect/Method;
    iget-object v7, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v4           #listenerMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 68
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v7, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v7, :cond_6

    const-string v7, "AdWhirl SDK"

    const-string v7, "Caught exception in handle()"

    invoke-static {v9, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_6
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0

    .line 74
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #listenerClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;>;"
    .end local v5           #method:Ljava/lang/String;
    .end local v6           #methodIndex:I
    :cond_7
    sget-boolean v7, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v7, :cond_8

    const-string v7, "AdWhirl SDK"

    const-string v7, "Event notification would be sent, but no interface is listening"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_8
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0
.end method
