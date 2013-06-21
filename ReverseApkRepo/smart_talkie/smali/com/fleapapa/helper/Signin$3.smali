.class Lcom/fleapapa/helper/Signin$3;
.super Ljava/lang/Object;
.source "Signin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Signin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Signin;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Signin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$3;->this$0:Lcom/fleapapa/helper/Signin;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$3;->this$0:Lcom/fleapapa/helper/Signin;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fleapapa/helper/Signin$3;->this$0:Lcom/fleapapa/helper/Signin;

    const-class v3, Lcom/fleapapa/helper/Avatar;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
