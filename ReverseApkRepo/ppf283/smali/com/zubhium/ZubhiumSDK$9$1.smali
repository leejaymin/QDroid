.class Lcom/zubhium/ZubhiumSDK$9$1;
.super Ljava/lang/Object;
.source "ZubhiumSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK$9;->onPostExecute(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zubhium/ZubhiumSDK$9;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$button1_title:Ljava/lang/String;

.field private final synthetic val$button2_title:Ljava/lang/String;

.field private final synthetic val$description:Ljava/lang/String;

.field private final synthetic val$forceUpdate:Z

.field private final synthetic val$targetUrl:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK$9;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$description:Ljava/lang/String;

    iput-object p5, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$button1_title:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$forceUpdate:Z

    iput-object p7, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$button2_title:Ljava/lang/String;

    iput-object p8, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$targetUrl:Ljava/lang/String;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/zubhium/ZubhiumSDK$9$1;)Lcom/zubhium/ZubhiumSDK$9;
    .locals 1
    .parameter

    .prologue
    .line 809
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 813
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    .line 814
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 815
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$button1_title:Ljava/lang/String;

    new-instance v2, Lcom/zubhium/ZubhiumSDK$9$1$1;

    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$targetUrl:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$forceUpdate:Z

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/zubhium/ZubhiumSDK$9$1$1;-><init>(Lcom/zubhium/ZubhiumSDK$9$1;Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 828
    iget-boolean v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$forceUpdate:Z

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$button2_title:Ljava/lang/String;

    new-instance v2, Lcom/zubhium/ZubhiumSDK$9$1$2;

    iget-boolean v3, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$forceUpdate:Z

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v4}, Lcom/zubhium/ZubhiumSDK$9$1$2;-><init>(Lcom/zubhium/ZubhiumSDK$9$1;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v1, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->val$forceUpdate:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 841
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 842
    return-void

    .line 840
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
