.class Lcom/wareone/tappmt/CategoryEditor$2;
.super Ljava/lang/Object;
.source "CategoryEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/CategoryEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/CategoryEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/CategoryEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/CategoryEditor$2;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-string v5, "acc_name"

    const-string v4, "_id"

    .line 87
    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor$2;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    #calls: Lcom/wareone/tappmt/CategoryEditor;->_saveData()V
    invoke-static {v2}, Lcom/wareone/tappmt/CategoryEditor;->access$2(Lcom/wareone/tappmt/CategoryEditor;)V

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, it:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, extra:Landroid/os/Bundle;
    const-string v2, "_id"

    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor$2;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    #getter for: Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/wareone/tappmt/CategoryEditor;->access$0(Lcom/wareone/tappmt/CategoryEditor;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "acc_name"

    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor$2;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    #getter for: Lcom/wareone/tappmt/CategoryEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/wareone/tappmt/CategoryEditor;->access$0(Lcom/wareone/tappmt/CategoryEditor;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "acc_name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor$2;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/wareone/tappmt/CategoryEditor;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object v2, p0, Lcom/wareone/tappmt/CategoryEditor$2;->this$0:Lcom/wareone/tappmt/CategoryEditor;

    invoke-virtual {v2}, Lcom/wareone/tappmt/CategoryEditor;->finish()V

    .line 95
    return-void
.end method
