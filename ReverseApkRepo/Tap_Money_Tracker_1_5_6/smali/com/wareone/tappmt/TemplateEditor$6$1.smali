.class Lcom/wareone/tappmt/TemplateEditor$6$1;
.super Ljava/lang/Object;
.source "TemplateEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TemplateEditor$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/TemplateEditor$6;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TemplateEditor$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TemplateEditor$6$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$6;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$6$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$6;

    #getter for: Lcom/wareone/tappmt/TemplateEditor$6;->this$0:Lcom/wareone/tappmt/TemplateEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor$6;->access$0(Lcom/wareone/tappmt/TemplateEditor$6;)Lcom/wareone/tappmt/TemplateEditor;

    move-result-object v1

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    .local v0, btn:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$10()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$6$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$6;

    #getter for: Lcom/wareone/tappmt/TemplateEditor$6;->this$0:Lcom/wareone/tappmt/TemplateEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor$6;->access$0(Lcom/wareone/tappmt/TemplateEditor$6;)Lcom/wareone/tappmt/TemplateEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor;->access$1(Lcom/wareone/tappmt/TemplateEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "currency"

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$10()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    return-void
.end method
