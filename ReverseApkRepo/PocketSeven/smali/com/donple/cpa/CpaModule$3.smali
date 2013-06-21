.class Lcom/donple/cpa/CpaModule$3;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$3;->this$0:Lcom/donple/cpa/CpaModule;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$3;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-virtual {v0}, Lcom/donple/cpa/CpaModule;->showAD()V

    .line 412
    return-void
.end method
