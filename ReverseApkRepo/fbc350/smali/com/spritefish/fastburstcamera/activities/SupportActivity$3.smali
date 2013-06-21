.class Lcom/spritefish/fastburstcamera/activities/SupportActivity$3;
.super Ljava/lang/Object;
.source "SupportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/SupportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/SupportActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/SupportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/SupportActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/SupportActivity;

    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->reportIssue(Landroid/app/Activity;)V

    .line 57
    return-void
.end method
