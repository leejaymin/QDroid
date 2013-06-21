.class Lcom/wareone/tappmt/TemplateEditor$5$1;
.super Ljava/lang/Object;
.source "TemplateEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TemplateEditor$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/TemplateEditor$5;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TemplateEditor$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TemplateEditor$5$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$5;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$5$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$5;

    #getter for: Lcom/wareone/tappmt/TemplateEditor$5;->this$0:Lcom/wareone/tappmt/TemplateEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor$5;->access$0(Lcom/wareone/tappmt/TemplateEditor$5;)Lcom/wareone/tappmt/TemplateEditor;

    move-result-object v1

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/TemplateEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 244
    .local v0, edt:Landroid/widget/EditText;
    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$9()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/wareone/tappmt/TemplateEditor$5$1;->this$1:Lcom/wareone/tappmt/TemplateEditor$5;

    #getter for: Lcom/wareone/tappmt/TemplateEditor$5;->this$0:Lcom/wareone/tappmt/TemplateEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor$5;->access$0(Lcom/wareone/tappmt/TemplateEditor$5;)Lcom/wareone/tappmt/TemplateEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/TemplateEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/TemplateEditor;->access$1(Lcom/wareone/tappmt/TemplateEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "payee"

    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$9()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 248
    return-void
.end method
