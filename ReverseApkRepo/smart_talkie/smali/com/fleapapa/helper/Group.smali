.class public Lcom/fleapapa/helper/Group;
.super Ljava/lang/Object;
.source "Group.java"


# static fields
.field public static final BUDDIES:Ljava/lang/String; = "buddies"


# instance fields
.field name:Ljava/lang/String;

.field ues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fleapapa/helper/CallPapa$UE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    return-void
.end method


# virtual methods
.method buddyIds()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    const-string v0, ""

    .line 37
    .local v0, s:Ljava/lang/String;
    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    return-object v0

    .line 37
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 38
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    const-string v3, ","

    iget v4, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method loadBuddies()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buddies"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/fleapapa/util/My;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_0
    if-lt v6, v5, :cond_0

    .line 34
    return-void

    .line 19
    :cond_0
    aget-object v0, v4, v6

    .line 20
    .local v0, b:Ljava/lang/String;
    const-string v7, "\\|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, t:[Ljava/lang/String;
    array-length v7, v1

    if-ge v7, v10, :cond_2

    .line 19
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 22
    :cond_2
    aget-object v7, v1, v9

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 23
    .local v3, uid:I
    sget v7, Lcom/fleapapa/util/My;->uid:I

    if-eq v3, v7, :cond_1

    .line 24
    iget-object v7, p0, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallPapa$UE;

    .line 25
    .local v2, ue:Lcom/fleapapa/helper/CallPapa$UE;
    if-nez v2, :cond_3

    new-instance v2, Lcom/fleapapa/helper/CallPapa$UE;

    .end local v2           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    sget-object v7, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v7, v3}, Lcom/fleapapa/helper/CallPapa$UE;-><init>(Lcom/fleapapa/helper/CallPapa;I)V

    .line 26
    .restart local v2       #ue:Lcom/fleapapa/helper/CallPapa$UE;
    :cond_3
    const/4 v7, 0x1

    aget-object v7, v1, v7

    iput-object v7, v2, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    .line 27
    const/4 v7, 0x2

    aget-object v7, v1, v7

    iput-object v7, v2, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    .line 28
    const/4 v7, 0x3

    aget-object v7, v1, v7

    iput-object v7, v2, Lcom/fleapapa/helper/CallPapa$UE;->city:Ljava/lang/String;

    .line 29
    array-length v7, v1

    if-le v7, v10, :cond_4

    aget-object v7, v1, v10

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 30
    :cond_4
    array-length v7, v1

    if-le v7, v11, :cond_5

    aget-object v7, v1, v11

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    .line 31
    :cond_5
    array-length v7, v1

    if-le v7, v12, :cond_6

    aget-object v7, v1, v12

    invoke-static {v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    .line 32
    :cond_6
    iget-object v7, p0, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v8, v2, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
