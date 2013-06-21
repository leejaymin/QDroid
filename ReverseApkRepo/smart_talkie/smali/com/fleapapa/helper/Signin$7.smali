.class Lcom/fleapapa/helper/Signin$7;
.super Ljava/lang/Thread;
.source "Signin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Signin;->sign(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Signin;

.field private final synthetic val$done:Ljava/lang/Runnable;

.field private final synthetic val$fail:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$mail:Ljava/lang/String;

.field private final synthetic val$pppp:Ljava/lang/String;

.field private final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Signin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Signin$7;->this$0:Lcom/fleapapa/helper/Signin;

    iput-object p3, p0, Lcom/fleapapa/helper/Signin$7;->val$user:Ljava/lang/String;

    iput-object p4, p0, Lcom/fleapapa/helper/Signin$7;->val$pppp:Ljava/lang/String;

    iput-object p5, p0, Lcom/fleapapa/helper/Signin$7;->val$mail:Ljava/lang/String;

    iput-object p6, p0, Lcom/fleapapa/helper/Signin$7;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/fleapapa/helper/Signin$7;->val$done:Ljava/lang/Runnable;

    iput-object p8, p0, Lcom/fleapapa/helper/Signin$7;->val$fail:Ljava/lang/Runnable;

    .line 230
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 232
    iget-object v1, p0, Lcom/fleapapa/helper/Signin$7;->this$0:Lcom/fleapapa/helper/Signin;

    new-instance v2, Lcom/fleapapa/helper/Flea;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v2, v1, Lcom/fleapapa/helper/Signin;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v1, p0, Lcom/fleapapa/helper/Signin$7;->val$user:Ljava/lang/String;

    iget-object v3, p0, Lcom/fleapapa/helper/Signin$7;->val$pppp:Ljava/lang/String;

    iget-object v4, p0, Lcom/fleapapa/helper/Signin$7;->val$mail:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Lcom/fleapapa/helper/Flea;->flea_signin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 233
    .local v0, ok:Z
    iget-object v1, p0, Lcom/fleapapa/helper/Signin$7;->this$0:Lcom/fleapapa/helper/Signin;

    iget-object v1, v1, Lcom/fleapapa/helper/Signin;->flea:Lcom/fleapapa/helper/Flea;

    iget-boolean v1, v1, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/Signin$7;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/fleapapa/helper/Signin$7;->val$done:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/Signin$7;->val$fail:Ljava/lang/Runnable;

    goto :goto_0
.end method
