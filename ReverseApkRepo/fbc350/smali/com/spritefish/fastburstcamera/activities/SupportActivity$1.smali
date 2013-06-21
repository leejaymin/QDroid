.class Lcom/spritefish/fastburstcamera/activities/SupportActivity$1;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/SupportActivity;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/SupportActivity;

    const-class v2, Lcom/spritefish/fastburstcamera/activities/CommonQuestionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/SupportActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/SupportActivity;

    invoke-virtual {v1, v0}, Lcom/spritefish/fastburstcamera/activities/SupportActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
