.class Lcom/wareone/tappmt/TemplateEditor$2$1;
.super Ljava/lang/Object;
.source "TemplateEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TemplateEditor$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/TemplateEditor$2;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TemplateEditor$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TemplateEditor$2$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$2;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "position"

    .prologue
    const-string v8, "acc_name"

    const-string v7, "_id"

    .line 160
    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Item Selected postion --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object v0, p1

    check-cast v0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;

    move-object v2, v0

    .line 162
    .local v2, dlg:Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;
    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "category id --> "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->getData(I)Ljava/util/Map;

    move-result-object v3

    const-string v6, "_id"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "category name --> "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->getData(I)Ljava/util/Map;

    move-result-object v3

    const-string v6, "acc_name"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/wareone/tappmt/TemplateEditor$2$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$2;

    #getter for: Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/TemplateEditor$2;->access$0(Lcom/wareone/tappmt/TemplateEditor$2;)Lcom/wareone/tappmt/TemplateEditor;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 166
    .local v1, btn:Landroid/widget/Button;
    invoke-virtual {v2, p2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->getData(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "acc_name"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/wareone/tappmt/TemplateEditor$2$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$2;

    #getter for: Lcom/wareone/tappmt/TemplateEditor$2;->this$0:Lcom/wareone/tappmt/TemplateEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/TemplateEditor$2;->access$0(Lcom/wareone/tappmt/TemplateEditor$2;)Lcom/wareone/tappmt/TemplateEditor;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/TemplateEditor;->access$1(Lcom/wareone/tappmt/TemplateEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "category"

    invoke-virtual {v2, p2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->getData(I)Ljava/util/Map;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->dismiss()V

    .line 170
    return-void
.end method
