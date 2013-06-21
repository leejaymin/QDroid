.class Lcom/qiip/arm/activity/ArmLoginCompleteActivity$1;
.super Ljava/lang/Object;
.source "ArmLoginCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->getBodyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmLoginCompleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity$1;->this$0:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 47
    const/4 v1, 0x1

    sput v1, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    .line 48
    invoke-static {}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getmContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 49
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 50
    return-void
.end method
