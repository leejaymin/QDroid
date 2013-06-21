.class Lcom/fleapapa/helper/CallUes$1;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$1;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$1;->this$0:Lcom/fleapapa/helper/CallUes;

    sget-object v1, Lcom/fleapapa/helper/CallUes;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallUes;->setList(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 76
    return-void
.end method
