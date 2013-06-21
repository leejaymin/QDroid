.class Lcom/fleapapa/helper/Helper$4;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Helper;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Helper;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Helper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Helper$4;->this$0:Lcom/fleapapa/helper/Helper;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fleapapa/helper/Helper$4;->this$0:Lcom/fleapapa/helper/Helper;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/fleapapa/helper/Signin;->sign_in_out(Landroid/app/Activity;ZI)V

    .line 56
    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/Helper$4;->this$0:Lcom/fleapapa/helper/Helper;

    invoke-virtual {v0}, Lcom/fleapapa/helper/Helper;->showSignStatus()V

    .line 57
    :cond_0
    return-void
.end method
