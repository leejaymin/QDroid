.class Lcom/zubhium/ZubhiumSDK$9$1$1;
.super Ljava/lang/Object;
.source "ZubhiumSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/zubhium/ZubhiumSDK$9$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$forceUpdate:Z

.field private final synthetic val$targetUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK$9$1;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->this$2:Lcom/zubhium/ZubhiumSDK$9$1;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$targetUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$forceUpdate:Z

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->this$2:Lcom/zubhium/ZubhiumSDK$9$1;

    #getter for: Lcom/zubhium/ZubhiumSDK$9$1;->this$1:Lcom/zubhium/ZubhiumSDK$9;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9$1;->access$0(Lcom/zubhium/ZubhiumSDK$9$1;)Lcom/zubhium/ZubhiumSDK$9;

    move-result-object v0

    #getter for: Lcom/zubhium/ZubhiumSDK$9;->this$0:Lcom/zubhium/ZubhiumSDK;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK$9;->access$2(Lcom/zubhium/ZubhiumSDK$9;)Lcom/zubhium/ZubhiumSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$targetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->launchUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 822
    iget-boolean v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$forceUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 825
    :cond_0
    return-void
.end method
