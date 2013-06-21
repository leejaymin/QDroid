.class Lexam/activity/CallActivity$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/activity/CallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/CallActivity;


# direct methods
.method constructor <init>(Lexam/activity/CallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/CallActivity$1;->this$0:Lexam/activity/CallActivity;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lexam/activity/CallActivity$1;->this$0:Lexam/activity/CallActivity;

    const-class v2, Lexam/activity/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/activity/CallActivity$1;->this$0:Lexam/activity/CallActivity;

    invoke-virtual {v1, v0}, Lexam/activity/CallActivity;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method
