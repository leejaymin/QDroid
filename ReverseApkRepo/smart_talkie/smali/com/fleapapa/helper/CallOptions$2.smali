.class Lcom/fleapapa/helper/CallOptions$2;
.super Ljava/lang/Object;
.source "CallOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallOptions;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallOptions$2;->this$0:Lcom/fleapapa/helper/CallOptions;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fleapapa/helper/CallOptions$2;->this$0:Lcom/fleapapa/helper/CallOptions;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fleapapa/helper/CallOptions$2;->this$0:Lcom/fleapapa/helper/CallOptions;

    const-class v3, Lcom/fleapapa/helper/Locales;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallOptions;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
