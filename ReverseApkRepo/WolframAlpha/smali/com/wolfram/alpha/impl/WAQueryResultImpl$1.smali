.class Lcom/wolfram/alpha/impl/WAQueryResultImpl$1;
.super Ljava/lang/Object;
.source "WAQueryResultImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/alpha/impl/WAQueryResultImpl;->finishAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/alpha/impl/WAQueryResultImpl;

.field final synthetic val$pod:Lcom/wolfram/alpha/WAPod;


# direct methods
.method constructor <init>(Lcom/wolfram/alpha/impl/WAQueryResultImpl;Lcom/wolfram/alpha/WAPod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl$1;->this$0:Lcom/wolfram/alpha/impl/WAQueryResultImpl;

    iput-object p2, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl$1;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl$1;->val$pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v0}, Lcom/wolfram/alpha/WAPod;->finishAsync()V
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method
