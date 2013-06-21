.class Lexam/activity/CommActivity$1;
.super Ljava/lang/Object;
.source "CommActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/activity/CommActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/CommActivity;


# direct methods
.method constructor <init>(Lexam/activity/CommActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/CommActivity$1;->this$0:Lexam/activity/CommActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lexam/activity/CommActivity$1;->this$0:Lexam/activity/CommActivity;

    const-class v2, Lexam/activity/ActEdit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TextIn"

    iget-object v2, p0, Lexam/activity/CommActivity$1;->this$0:Lexam/activity/CommActivity;

    iget-object v2, v2, Lexam/activity/CommActivity;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lexam/activity/CommActivity$1;->this$0:Lexam/activity/CommActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lexam/activity/CommActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    return-void
.end method
