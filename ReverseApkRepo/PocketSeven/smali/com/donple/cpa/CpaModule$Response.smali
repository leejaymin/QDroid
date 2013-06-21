.class Lcom/donple/cpa/CpaModule$Response;
.super Ljava/lang/Object;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Response"
.end annotation


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$Response;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$Response;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$Response;-><init>(Lcom/donple/cpa/CpaModule;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Lcom/donple/cpa/CpaModule$Response;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 1567
    iput p1, p0, Lcom/donple/cpa/CpaModule$Response;->code:I

    .line 1568
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$Response;->message:Ljava/lang/String;

    .line 1576
    return-void
.end method
