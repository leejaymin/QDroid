.class Lcom/zubhium/ZubhiumSDK$8;
.super Ljava/lang/Object;
.source "ZubhiumSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;

.field private final synthetic val$a:Landroid/app/Activity;

.field private final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$8;->this$0:Lcom/zubhium/ZubhiumSDK;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$8;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$8;->val$string:Ljava/lang/String;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$8;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$8;->val$string:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 721
    return-void
.end method
