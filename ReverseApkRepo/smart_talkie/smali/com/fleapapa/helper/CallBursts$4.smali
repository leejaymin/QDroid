.class Lcom/fleapapa/helper/CallBursts$4;
.super Ljava/lang/Object;
.source "CallBursts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallBursts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallBursts;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$4;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    sget-object v0, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->stopPlayer()V

    .line 89
    return-void
.end method
