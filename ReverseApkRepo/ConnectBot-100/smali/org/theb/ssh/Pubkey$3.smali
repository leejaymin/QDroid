.class final Lorg/theb/ssh/Pubkey$3;
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
    iput-object p1, p0, Lorg/theb/ssh/Pubkey$3;->this$0:Lorg/theb/ssh/Pubkey;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/theb/ssh/Pubkey$3;->this$0:Lorg/theb/ssh/Pubkey;

    invoke-virtual {v0}, Lorg/theb/ssh/Pubkey;->finish()V

    .line 124
    return-void
.end method
