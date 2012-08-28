.class final Lorg/theb/ssh/Pubkey$2;
.super Ljava/lang/Object;
.source "Pubkey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/theb/ssh/Pubkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/theb/ssh/Pubkey;


# direct methods
.method constructor <init>(Lorg/theb/ssh/Pubkey;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/theb/ssh/Pubkey$2;->this$0:Lorg/theb/ssh/Pubkey;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lorg/theb/ssh/Pubkey$2;->this$0:Lorg/theb/ssh/Pubkey;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/theb/ssh/Pubkey$2;->this$0:Lorg/theb/ssh/Pubkey;

    iget-object v2, v2, Lorg/theb/ssh/Pubkey;->mKeyGen:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lorg/theb/ssh/Pubkey;->kgThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lorg/theb/ssh/Pubkey;->access$2(Lorg/theb/ssh/Pubkey;Ljava/lang/Thread;)V

    .line 101
    iget-object v0, p0, Lorg/theb/ssh/Pubkey$2;->this$0:Lorg/theb/ssh/Pubkey;

    #getter for: Lorg/theb/ssh/Pubkey;->kgThread:Ljava/lang/Thread;
    invoke-static {v0}, Lorg/theb/ssh/Pubkey;->access$3(Lorg/theb/ssh/Pubkey;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method
