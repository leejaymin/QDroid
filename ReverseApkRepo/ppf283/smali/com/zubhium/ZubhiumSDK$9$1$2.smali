.class Lcom/zubhium/ZubhiumSDK$9$1$2;
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


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK$9$1;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$9$1$2;->this$2:Lcom/zubhium/ZubhiumSDK$9$1;

    iput-boolean p2, p0, Lcom/zubhium/ZubhiumSDK$9$1$2;->val$forceUpdate:Z

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$9$1$2;->val$activity:Landroid/app/Activity;

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$2;->val$forceUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$2;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$9$1$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 836
    :cond_0
    return-void
.end method
