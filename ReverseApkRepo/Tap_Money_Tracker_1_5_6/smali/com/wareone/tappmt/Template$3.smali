.class Lcom/wareone/tappmt/Template$3;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Template;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Template;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Template;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Template$3;->this$0:Lcom/wareone/tappmt/Template;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/Template$3;->this$0:Lcom/wareone/tappmt/Template;

    const-class v2, Lcom/wareone/tappmt/TemplateEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, it:Landroid/content/Intent;
    const-string v1, "ACTION"

    const v2, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/wareone/tappmt/Template$3;->this$0:Lcom/wareone/tappmt/Template;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/Template;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
