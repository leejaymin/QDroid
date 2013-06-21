.class Lcom/fleapapa/helper/Signin$2;
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
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$2;->this$0:Lcom/fleapapa/helper/Signin;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$2;->this$0:Lcom/fleapapa/helper/Signin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Signin;->setResult(I)V

    .line 115
    iget-object v0, p0, Lcom/fleapapa/helper/Signin$2;->this$0:Lcom/fleapapa/helper/Signin;

    invoke-virtual {v0}, Lcom/fleapapa/helper/Signin;->finish()V

    .line 116
    return-void
.end method
