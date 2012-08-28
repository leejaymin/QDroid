.class Lorg/connectbot/HelpActivity$1;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HelpActivity;

.field private final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/connectbot/HelpActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HelpActivity$1;->this$0:Lorg/connectbot/HelpActivity;

    iput-object p2, p0, Lorg/connectbot/HelpActivity$1;->val$topic:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/connectbot/HelpActivity$1;->this$0:Lorg/connectbot/HelpActivity;

    const-class v2, Lorg/connectbot/HelpTopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lorg/connectbot/HelpActivity$1;->val$topic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lorg/connectbot/HelpActivity$1;->this$0:Lorg/connectbot/HelpActivity;

    invoke-virtual {v1, v0}, Lorg/connectbot/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method
