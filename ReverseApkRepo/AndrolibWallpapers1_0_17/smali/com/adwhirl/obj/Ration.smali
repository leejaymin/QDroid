.class public Lcom/adwhirl/obj/Ration;
.super Ljava/lang/Object;
.source "Ration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/adwhirl/obj/Ration;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public key2:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nid:Ljava/lang/String;

.field public priority:I

.field public type:I

.field public weight:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, ""

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v2, p0, Lcom/adwhirl/obj/Ration;->nid:Ljava/lang/String;

    .line 21
    iput v3, p0, Lcom/adwhirl/obj/Ration;->type:I

    .line 22
    const-string v0, ""

    iput-object v2, p0, Lcom/adwhirl/obj/Ration;->name:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adwhirl/obj/Ration;->weight:D

    .line 24
    const-string v0, ""

    iput-object v2, p0, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v2, p0, Lcom/adwhirl/obj/Ration;->key2:Ljava/lang/String;

    .line 26
    iput v3, p0, Lcom/adwhirl/obj/Ration;->priority:I

    .line 28
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/adwhirl/obj/Ration;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 31
    iget v0, p1, Lcom/adwhirl/obj/Ration;->priority:I

    .line 32
    .local v0, otherPriority:I
    iget v1, p0, Lcom/adwhirl/obj/Ration;->priority:I

    if-ge v1, v0, :cond_0

    .line 33
    const/4 v1, -0x1

    .line 39
    :goto_0
    return v1

    .line 35
    :cond_0
    iget v1, p0, Lcom/adwhirl/obj/Ration;->priority:I

    if-le v1, v0, :cond_1

    .line 36
    const/4 v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/adwhirl/obj/Ration;

    invoke-virtual {p0, p1}, Lcom/adwhirl/obj/Ration;->compareTo(Lcom/adwhirl/obj/Ration;)I

    move-result v0

    return v0
.end method
