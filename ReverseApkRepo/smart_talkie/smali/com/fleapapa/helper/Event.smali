.class public Lcom/fleapapa/helper/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field static events:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/Event;",
            ">;"
        }
    .end annotation
.end field

.field static init:Z

.field static ltime:Ljava/lang/String;


# instance fields
.field code:I

.field etime:Ljava/lang/String;

.field iid:I

.field pid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Lcom/fleapapa/helper/Event;->initialize()Z

    move-result v0

    sput-boolean v0, Lcom/fleapapa/helper/Event;->init:Z

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/fleapapa/helper/Event;->events:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "pid"
    .parameter "iid"
    .parameter "etime"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/fleapapa/helper/Event;->code:I

    .line 17
    iput-object p2, p0, Lcom/fleapapa/helper/Event;->pid:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/fleapapa/helper/Event;->iid:I

    .line 19
    iput-object p4, p0, Lcom/fleapapa/helper/Event;->etime:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/fleapapa/helper/Event;->events:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    sput-object p4, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    .line 25
    :cond_0
    return-void
.end method

.method public static initialize()Z
    .locals 2

    .prologue
    .line 27
    const-string v0, "ltime"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-wide/32 v0, -0x93a80

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->getRelativeTime(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/helper/Event;->ltime:Ljava/lang/String;

    .line 30
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "del"

    .prologue
    .line 44
    const-string v1, ""

    .line 45
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lcom/fleapapa/helper/Event;->events:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    return-object v1

    .line 45
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Event;

    .line 46
    .local v0, e:Lcom/fleapapa/helper/Event;
    invoke-virtual {v0}, Lcom/fleapapa/helper/Event;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v3}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/fleapapa/helper/Event;->code:I

    packed-switch v0, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_3
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f0600b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
